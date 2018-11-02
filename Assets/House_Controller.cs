using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class House_Controller : MonoBehaviour {

    Rigidbody rb;

    public Transform target;
    int currentTargetIndex;
    public float checkPointTriggerRadius = 4;

    Vector3 moveDirection;

    public float moveSpeed;
    public float acceleration;
    public float turnSpeed;
    public float turnAcceleration;

    public float animationClock;
    public float clockSpeed = 1;

    public PathManager path;
    Vector3 lookDirOverride = Vector3.zero;
    public float liftHeight = 4;
    public float liftSpeed = 0.1f;
    float currentLiftHeight = 0;
    public float rightingForce = 100;
	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
        if (path != null)
        {
            target = path.getTransform(0);
        }
	}

    public float getCurrentLiftHeight()
    {
        return currentLiftHeight;
    }
	
	// Update is called once per frame
	void Update () {
        updateAnimationClock();
        if (path != null && target!=null)
        {
            updatePathFollowing();
        }
        updateLiftHeight();
        if (target != null)
        {
            updateMoveDirection();
        }
    }

    void updateAnimationClock()
    {
        animationClock += (rb.velocity.magnitude + (rb.angularVelocity.magnitude * 10)) * clockSpeed; //check this out
        animationClock = animationClock % 360;
    }

    void updateLiftHeight()
    {
        if (currentLiftHeight < liftHeight)
        {
            currentLiftHeight += liftSpeed * Time.deltaTime;
        }
        else
        {
            currentLiftHeight -= liftSpeed * Time.deltaTime;
        }
        if(Mathf.Abs(currentLiftHeight-liftHeight) <= liftSpeed * Time.deltaTime)
        {
            currentLiftHeight = liftHeight;
        }
    }

    void updatePathFollowing()
    {
        if(Vector3.Distance(transform.position,target.position) < target.GetComponent<Checkpoint>().radius)
        {
            currentTargetIndex = path.getNextIndex(currentTargetIndex);
            target = path.getTransform(currentTargetIndex);
            Checkpoint temp = target.GetComponent<Checkpoint>();
            moveSpeed = temp.speed;
            if (temp.height > 0)
            {
                liftHeight = temp.height;
            }
            lookDirOverride = temp.lookdir;
        }
    }

    void updateMoveDirection()
    {
        moveDirection = (target.position - transform.position).normalized * moveSpeed;
        moveDirection.y = 0;
    }

    private void FixedUpdate()
    {
        if (target != null)
        {
            Vector3 movement = new Vector3(moveDirection.x - rb.velocity.x, 0, moveDirection.z - rb.velocity.z) * acceleration;
            rb.velocity += movement;
            float angleToTarget;
            if (lookDirOverride.magnitude == 0)
            {
                angleToTarget = Vector2.Dot(new Vector2(transform.forward.x, transform.forward.z), new Vector2(target.position.x - transform.position.x, target.position.z - transform.position.z).normalized);
            }
            else
            {
                angleToTarget = Vector2.Dot(new Vector2(transform.forward.x, transform.forward.z), new Vector2(lookDirOverride.x, lookDirOverride.z).normalized);
            }
            angleToTarget = Mathf.Sign(angleToTarget) * turnSpeed;
            Vector3 rotation = new Vector3(0, angleToTarget - rb.angularVelocity.y, 0) * turnAcceleration;
            rb.angularVelocity += rotation;
            rb.AddTorque(new Vector3(-transform.up.z, 0, transform.up.x) * rightingForce, ForceMode.Force);
        }
    }

    public Vector3 getVelocity()
    {
        return GetComponent<Rigidbody>().velocity;
    }

    public Vector2 getAnimationClock()
    {
        return new Vector2(Mathf.Sin(animationClock * Mathf.Deg2Rad), Mathf.Cos(animationClock * Mathf.Deg2Rad));
    }
}
