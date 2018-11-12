using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationManager : MonoBehaviour {

    PlayerController playerController;
    public Animator anim;
    public Transform lookTarget;
    Transform animOrigin;

    public float turnSpeed;

    Vector2 leanAngles;

    public float forwardLeanMagnitude = 1;
    public float accelerationLeanMagnitude = 10;
    public float sideLeanMagnitude = 1;
    public float speedMagnitude = 1;
    public float turnMagnitude = 1;

    public float lookUpHeight = 3;
    float verticalSpringPos = 1;
    float vertSpringVelocity = 0;
    public float vertSpringiness = 1;
    public float vertSpringDampening = 0.9f;
    public float footHeight = 0.2f;

    public float rightLegOffset = 0;
    public float leftLegOffset = 0;
    public float heightOffset = 0;

    private float armIKWeight = 0;
    private float armIKTargetWeight = 0;
    private Vector3 lastArmGrabTarget;
    private Vector3 headIKTarget;
    private Vector3 headIKLookPos;

    PlayerManager playerManager;

    // Use this for initialization
    void Start () {
        animOrigin = transform.parent.transform;
        playerController = animOrigin.parent.GetComponent<PlayerController>();
        playerManager = transform.root.gameObject.GetComponent<PlayerManager>();
    }
	
	// Update is called once per frame
	void Update () {
        Vector3 velocity = playerController.getVelocity();
        velocity.y = 0;
        Vector3 acceleration = playerController.getAcceleration();
        //acceleration.y = 0;
        Vector3 oldForward = animOrigin.forward;
        if(playerManager.getLookTarget() != null)
        {
            Quaternion newRotation = Quaternion.LookRotation(Vector3.RotateTowards(animOrigin.forward, (playerManager.getLookTarget().position - transform.position).normalized, turnSpeed * 0.1f * Time.deltaTime, 0.0f), Vector3.up);
            animOrigin.rotation = newRotation;
            leanAngles.y = Vector3.Dot(-animOrigin.right, velocity.normalized) * sideLeanMagnitude * velocity.magnitude;
            leanAngles.x = (velocity.magnitude * forwardLeanMagnitude * Vector3.Dot(animOrigin.forward, velocity.normalized));
            animOrigin.rotation = Quaternion.Euler(leanAngles.x, newRotation.eulerAngles.y, leanAngles.y);
        }
        else if (velocity.magnitude > 0.01f)
        {
            Quaternion newRotation = Quaternion.LookRotation(Vector3.RotateTowards(animOrigin.forward, velocity.normalized, turnSpeed * velocity.magnitude * Time.deltaTime, 0.0f), Vector3.up);
            animOrigin.rotation = newRotation;
            leanAngles.y = Vector3.Dot(-animOrigin.right, velocity.normalized) * sideLeanMagnitude * velocity.magnitude;
            leanAngles.x = (velocity.magnitude * forwardLeanMagnitude * Vector3.Dot(animOrigin.forward, velocity.normalized));
            animOrigin.rotation = Quaternion.Euler(leanAngles.x, newRotation.eulerAngles.y, leanAngles.y);
        }

        lookTarget.transform.position = transform.position + new Vector3(0,lookUpHeight,0) + (playerController.getCamBasedMovement()* 10) + transform.forward;

        vertSpringVelocity += (transform.position.y - verticalSpringPos) * vertSpringiness;

        if (verticalSpringPos > transform.position.y)
        {
            vertSpringVelocity = (transform.position.y - verticalSpringPos);
            verticalSpringPos = transform.position.y;
        }

        vertSpringVelocity *= vertSpringDampening;

        verticalSpringPos += vertSpringVelocity;
        //verticalSpringPos = Mathf.Clamp(transform.position.y - verticalSpringPos,-10,0) + transform.position.y;
        
        anim.SetFloat("Turning", Mathf.Lerp(Vector3.Dot(-transform.right, oldForward) * turnMagnitude, anim.GetFloat("Turning"), 0.9f));
        anim.SetFloat("TurnMagnitude", Mathf.Abs(anim.GetFloat("Turning")));
        anim.SetFloat("Velocity", velocity.magnitude * Vector3.Dot(transform.forward, velocity.normalized) * speedMagnitude);
        anim.SetFloat("StandHeight", transform.position.y - verticalSpringPos);
        anim.SetFloat("VerticalVelocity", Mathf.Lerp(playerController.getVelocity().y, anim.GetFloat("VerticalVelocity"), 0.9f));
        anim.SetBool("Grounded",playerController.groundTrigger.isGrounded());
        anim.SetFloat("Strafe", velocity.magnitude * Vector3.Dot(transform.right, velocity.normalized) * speedMagnitude);
    }

    private void OnDrawGizmos()
    {
        Gizmos.DrawWireSphere(new Vector3(transform.position.x, verticalSpringPos, transform.position.z), 0.5f);
    }

    private void OnAnimatorIK(int layerIndex)
    {
        if (playerManager.getLookTarget() != null)
        {
            headIKTarget = playerManager.getLookTarget().position;
            anim.SetLookAtWeight(1);
            if (playerManager.grabbingObject)
            {
                lastArmGrabTarget = playerManager.getLookTarget().position;
                armIKTargetWeight = 1f;
            }
        }
        else
        {
            if (lookTarget != null)
            {
                headIKTarget = lookTarget.position;
                anim.SetLookAtWeight(1);
            }
            else
            {
                anim.SetLookAtWeight(0);
            }
            armIKTargetWeight = 0f;
        }

        //headLerp and going to target
        headIKLookPos = Vector3.Lerp(headIKLookPos,headIKTarget,0.20f);
        anim.SetLookAtPosition(headIKLookPos);

        //armLerp and going to target
        armIKWeight = Mathf.Lerp(armIKWeight, armIKTargetWeight, 0.1f);
        anim.SetIKPosition(AvatarIKGoal.LeftHand, lastArmGrabTarget);
        anim.SetIKPosition(AvatarIKGoal.RightHand, lastArmGrabTarget);
        anim.SetIKPositionWeight(AvatarIKGoal.LeftHand, armIKWeight);
        anim.SetIKPositionWeight(AvatarIKGoal.RightHand, armIKWeight);

        updateLegIK();
    }

    void updateLegIK()
    {
        RaycastHit hit;
        transform.localPosition = new Vector3(0, -1, 0);

        anim.SetIKPositionWeight(AvatarIKGoal.LeftFoot, 0);
        if (Physics.Raycast(anim.GetBoneTransform(HumanBodyBones.LeftFoot).position + Vector3.up, -Vector3.up, out hit, 2, playerController.groundTrigger.layerMask))
        {
            leftLegOffset = Mathf.Lerp(leftLegOffset, transform.position.y - hit.point.y, 0.2f);
            anim.SetIKPosition(AvatarIKGoal.LeftFoot, new Vector3(hit.point.x, anim.GetBoneTransform(HumanBodyBones.LeftFoot).position.y - leftLegOffset, hit.point.z));
            anim.SetIKPositionWeight(AvatarIKGoal.LeftFoot, 1);
        }
        else
        {
            anim.SetIKPositionWeight(AvatarIKGoal.LeftFoot, 0);
            leftLegOffset = 0;
        }


        anim.SetIKPositionWeight(AvatarIKGoal.RightFoot, 0);
        if (Physics.Raycast(anim.GetBoneTransform(HumanBodyBones.RightFoot).position + Vector3.up, -Vector3.up, out hit, 2, playerController.groundTrigger.layerMask))
        {
            rightLegOffset = Mathf.Lerp(rightLegOffset, transform.position.y - hit.point.y, 0.2f);
            anim.SetIKPosition(AvatarIKGoal.RightFoot, new Vector3(hit.point.x, anim.GetBoneTransform(HumanBodyBones.RightFoot).position.y - rightLegOffset, hit.point.z));
            anim.SetIKPositionWeight(AvatarIKGoal.RightFoot, 1);
        }
        else
        {
            anim.SetIKPositionWeight(AvatarIKGoal.RightFoot, 0);
            rightLegOffset = 0;
        }

        heightOffset = Mathf.Lerp(heightOffset, Mathf.Max(leftLegOffset, rightLegOffset), Mathf.Clamp(1 - playerController.getVelocity().magnitude * 10, 0.05f, 0.2f));
        transform.position -= new Vector3(0, heightOffset, 0);
    }

    public PlayerController GetPlayerController()
    {
        return playerController;
    }

    public void turn(float rotation)
    {
        animOrigin.Rotate(new Vector3(0,rotation,0));
    }
}
