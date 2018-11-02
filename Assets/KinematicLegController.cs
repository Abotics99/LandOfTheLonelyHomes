using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KinematicLegController : MonoBehaviour {
    public Transform armature;
    public Transform bone_0;
    public Transform bone_1;
    public Transform bone_2;
    public float bone0_Length;
    public float bone1_Length;

    Vector3 targetPoint = Vector3.zero;
    Vector3 lastTarget = Vector3.zero;

    public float stepTime = 0;
    public float stepSpeed = 1f;

    public LayerMask layerMask;
    public Transform kneeDirection;
    public Transform footHomeRayOrigin;

    public float stepRadius = 0;
    public float springDamping;
    public float stepHeight = 1;
    public AnimationCurve stepCurve;
    public AnimationCurve stepTimeCurve;

    public bool grounded = false;

    Vector3 lastHipPos;
    Vector3 hipVelocity;
    Vector3 lastFootPos;
    Vector3 footVelocity;
    Vector3 legHome;

    public float stepTimingPos;
    Vector2 stepTimingPosVec;
    public float stepTimingRange;
    public float velocityOverStep = 20;
    public float kneeIdleIntensity;
    public float kneeIdleSpeed;

    public float animationClock;
    public float clockSpeed = 1;

    // Use this for initialization
    void Start()
    {
        bone0_Length = Vector3.Distance(bone_0.position, bone_1.position);
        bone1_Length = Vector3.Distance(bone_1.position, bone_2.position);
        targetPoint = transform.position + (transform.up - transform.forward) * (bone0_Length + bone1_Length);
        lastTarget = targetPoint;
        lastHipPos = transform.position;
        stepTimingPosVec = new Vector2(Mathf.Sin(stepTimingPos * Mathf.Deg2Rad), Mathf.Cos(stepTimingPos * Mathf.Deg2Rad));
        updateLimb();
    }

    // Update is called once per frame
    void Update()
    {
        updateAnimationClock();
        updateStepTime();
        updateLimb();
        float legWave = (Mathf.PerlinNoise(Time.time * kneeIdleSpeed, (transform.position.x + transform.position.z) / 10) - 0.5f) * kneeIdleIntensity;
        legWave += (Mathf.PerlinNoise((Time.time * 2 * kneeIdleSpeed) + transform.position.x + 100, (transform.position.z / 10) + 1234) - 0.5f) * kneeIdleIntensity;
        kneeDirection.localPosition = new Vector3(legWave, 0, 1);
    }

    private void LateUpdate()
    {
        //Update foot Velocity
        footVelocity = bone_2.localPosition - lastFootPos;
        lastFootPos = bone_2.localPosition;
    }

    private void FixedUpdate()
    {
        //update hip velocity
        hipVelocity = transform.position - lastHipPos;
        lastHipPos = transform.position;
    }

    void step(Vector2 direction)
    {
        Vector3 nextStep = new Vector3(direction.x, 0, direction.y) + legHome;
        nextStep.y += stepHeight;
        RaycastHit hit;
        if (Physics.Raycast(nextStep, Vector3.down, out hit, stepHeight * 2, layerMask))
        {
            lastTarget = bone_2.position;
            targetPoint = hit.point;
            stepTime = 0;
        }
        else
        {
            return;
        }
    }

    private void updateLimb()
    {
        //test for whether the foot is grounded or not
        RaycastHit groundHit;
        Debug.DrawRay(bone_2.position + (Vector3.up * 0.5f), Vector3.down * 1);
        Debug.DrawRay(bone_2.position, hipVelocity * 10);
        if (Physics.SphereCast(bone_2.position + (Vector3.up * 0.5f), 0.1f, Vector3.down, out groundHit, 1, layerMask))
        {
            grounded = true;
        }
        else
        {
            grounded = false;
        }


        //cast for where to place the leg when it is grounded, also straighten leg when the leg has been pulled off the ground
        RaycastHit hit;
        if (Physics.SphereCast(footHomeRayOrigin.position, 0.5f, footHomeRayOrigin.forward, out hit, bone0_Length + bone1_Length, layerMask))
        {
            legHome = hit.point + (new Vector3(hipVelocity.x, 0, hipVelocity.z) * velocityOverStep);
            if ((Vector3.Distance(legHome, targetPoint) > stepRadius) || Vector3.Dot(transform.forward,(targetPoint - transform.position).normalized) >0)
            {
                step(new Vector3(hipVelocity.x, 0, hipVelocity.z).normalized * stepRadius * 0.5f);
            }
        }
        else
        {
            targetPoint = transform.position + (transform.up - transform.forward) * (bone0_Length + bone1_Length);
            grounded = false;
        }

        //set the leg ik system where to put the foot
        setLimb(getStep(lastTarget, targetPoint, stepTime));
    }

    void updateStepTime()
    {
        stepTime += (stepSpeed * Time.deltaTime);
        stepTime = Mathf.Clamp01(stepTime);
    }

    void setLimb(Vector3 target)
    {
        float maxReachLength = bone0_Length + bone1_Length;
        float distToHand = Mathf.Clamp(Vector3.Distance(transform.position, target), 0, maxReachLength);

        if (distToHand < maxReachLength)
        {
            float AB = distToHand;
            float AC = bone0_Length; //bone0Length
            float BC = bone1_Length; //bone1Length
            float y = (Mathf.Pow(AB, 2) + Mathf.Pow(AC, 2) - Mathf.Pow(BC, 2)) / (2 * AB);

            float bone_0_weightedLength = y;
            float bone_1_weightedLength = distToHand - y;

            float bone_0_angle = Mathf.Acos(bone_0_weightedLength / bone0_Length) * Mathf.Rad2Deg;
            float bone_1_angle = 180 - ((Mathf.Asin(bone_1_weightedLength / bone1_Length) * Mathf.Rad2Deg) + (90f - bone_0_angle));

            armature.LookAt(target, kneeDirection.position - transform.position);

            bone_0.localRotation = Quaternion.Euler(90 - bone_0_angle, 0, 0);
            bone_1.localRotation = Quaternion.Euler(bone_1_angle, 0, 0);
        }
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawCube(bone_0.transform.position, new Vector3(0.1f, 0.1f, 0.1f));
        Gizmos.DrawLine(bone_0.transform.position, bone_0.transform.position + (bone_0.transform.up * bone0_Length));
        Gizmos.DrawCube(bone_0.transform.position + (bone_0.transform.up * bone0_Length), new Vector3(0.1f, 0.1f, 0.1f));
        Gizmos.color = Color.blue;
        Gizmos.DrawCube(bone_1.transform.position, new Vector3(0.1f, 0.1f, 0.1f));
        Gizmos.DrawLine(bone_1.transform.position, bone_1.transform.position + (bone_1.transform.up * bone1_Length));
        Gizmos.DrawCube(bone_1.transform.position + (bone_1.transform.up * bone1_Length), new Vector3(0.1f, 0.1f, 0.1f));
        Gizmos.color = Color.white;
        Gizmos.DrawRay(footHomeRayOrigin.position, footHomeRayOrigin.forward * (bone0_Length + bone1_Length));
        Gizmos.color = Color.cyan;
        Gizmos.DrawCube(targetPoint, new Vector3(0.1f, 0.1f, 0.1f));
        Gizmos.color = Color.green;
        Gizmos.DrawWireSphere(legHome, stepRadius);
    }

    Vector3 getStep(Vector3 start, Vector3 end, float time)
    {
        time = stepTimeCurve.Evaluate(time);
        Vector3 temp = Vector3.Lerp(start, end, time);
        temp.y += stepCurve.Evaluate(time) * stepHeight;
        return temp;
    }

    public Vector3 endPosition()
    {
        return targetPoint;
    }

    void updateAnimationClock()
    {
        animationClock += hipVelocity.magnitude * clockSpeed;
        animationClock = animationClock % 360;
    }

    public Vector2 getAnimationClock()
    {
        return new Vector2(Mathf.Sin(animationClock * Mathf.Deg2Rad), Mathf.Cos(animationClock * Mathf.Deg2Rad));
    }
}
