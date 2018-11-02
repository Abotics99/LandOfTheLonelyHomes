using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LegIK : MonoBehaviour {

    public Transform rightFootBone;
    public Transform leftFootBone;

    Vector3 rightFootOriginalPos;
    Vector3 leftFootOriginalPos;
    Quaternion rightFootOriginalRot;
    Quaternion leftFootOriginalRot;

    private Vector3 rightFootPos;
    private Vector3 leftFootPos;
    private Vector3 rightFootNormal;
    private Vector3 leftFootNormal;

    public float rayTestHeight;
    public float ikWeight;
    public float height;
    public float legSnapDistance;

    PlayerController player;

    SpringJoint spring;

    private float groundedLegs;

    Transform standingObject;


    public Animator animator;
	// Use this for initialization
	void Start () {
        animator = GetComponent<Animator>();
        player = GetComponent<PlayerController>();
        spring = GetComponent<SpringJoint>();
        rightFootOriginalPos = rightFootBone.position;
        leftFootOriginalPos = leftFootBone.position;
    }
	
	// Update is called once per frame
	void Update () {
        RaycastHit hit;
        int layerMask = ~(1 << 2 | 1 << 8);
        groundedLegs = 0;
        GameObject leftGround = null;
        GameObject rightGround = null;
        if (Physics.Raycast(rightFootOriginalPos + new Vector3(0,rayTestHeight,0), Vector3.down, out hit, legSnapDistance,  layerMask))
        {
            rightFootPos = hit.point;
            rightFootNormal = hit.normal;
            groundedLegs+=0.5f;
            rightGround = hit.collider.gameObject;
        }
        if (Physics.Raycast(leftFootOriginalPos + new Vector3(0, rayTestHeight, 0), Vector3.down, out hit, legSnapDistance, layerMask))
        {
            leftFootPos = hit.point;
            leftFootNormal = hit.normal;
            groundedLegs+=0.5f;
            leftGround = hit.collider.gameObject;
        }
        if(leftGround == rightGround)
        {
            if(leftGround != null && leftGround.CompareTag("MovingPlatform"))
            {
                standingObject = leftGround.transform;
            }
            else
            {
                standingObject = null;
            }
        }
        transform.parent = standingObject;
        if (grounded())
        {
            spring.connectedAnchor = new Vector3(spring.connectedAnchor.x, Mathf.Lerp((rightFootPos.y + leftFootPos.y) / 2, Mathf.Min(leftFootPos.y, rightFootPos.y), Mathf.Clamp01(1f - new Vector2(player.getVelocity().x, player.getVelocity().z).magnitude * ikWeight)) + height, spring.connectedAnchor.z);
        }
        else
        {
            spring.connectedAnchor = new Vector3(spring.connectedAnchor.x, transform.position.y + height, spring.connectedAnchor.z);
        }
    }

    public float stepSlope()
    {
        return Mathf.Abs((Vector3.Angle((rightFootNormal + leftFootNormal) * 0.5f,Vector3.up)/90f) - 1f);
    }

    public bool grounded()
    {
        return groundedLegs != 0;
    }

    private void OnAnimatorIK()
    {
        rightFootOriginalPos = rightFootBone.position;
        leftFootOriginalPos = leftFootBone.position;
        rightFootOriginalRot = rightFootBone.rotation;
        leftFootOriginalRot = leftFootBone.rotation;
        animator.SetIKPositionWeight(AvatarIKGoal.RightFoot, groundedLegs);
        animator.SetIKRotationWeight(AvatarIKGoal.RightFoot, 0);
        animator.SetIKPosition(AvatarIKGoal.RightFoot, rightFootPos + new Vector3(0, rightFootOriginalPos.y - transform.position.y,0));
        animator.SetIKRotation(AvatarIKGoal.RightFoot, rightFootOriginalRot);
        animator.SetIKPositionWeight(AvatarIKGoal.LeftFoot, groundedLegs);
        animator.SetIKRotationWeight(AvatarIKGoal.LeftFoot, 0);
        animator.SetIKPosition(AvatarIKGoal.LeftFoot, leftFootPos + new Vector3(0, leftFootOriginalPos.y - transform.position.y, 0));
        animator.SetIKRotation(AvatarIKGoal.LeftFoot, leftFootOriginalRot);
    }
}
