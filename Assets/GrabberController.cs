using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrabberController : MonoBehaviour {

    public Transform grabTarget;
    public AnimationManager playerAnim;
    private SpringJoint grabSpring;


    public bool grabbing;

    public float maxGrabDist;

    PlayerManager playerManager;
    PlayerController playerController;

    public float springStrength = 10;

	// Use this for initialization
	void Start () {
        playerManager = transform.root.gameObject.GetComponent<PlayerManager>();
        playerController = transform.root.gameObject.GetComponent<PlayerController>();
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.E))
        {
            if (gameObject.GetComponent<SpringJoint>() == null)
            {
                Transform closestGrab = getClosestGrabPoint();
                
                if (closestGrab != null)
                {
                    playerManager.setGrabbing(true);
                    playerManager.setLookTarget(closestGrab);
                    grabSpring = gameObject.AddComponent<SpringJoint>();
                    grabSpring.autoConfigureConnectedAnchor = false;
                    grabSpring.connectedBody = closestGrab.transform.parent.gameObject.GetComponent<Rigidbody>();
                    grabSpring.connectedAnchor = closestGrab.transform.localPosition;
                    grabSpring.spring = springStrength;
                }
            }
            else
            {
                playerManager.setGrabbing(false);
                playerManager.setLookTarget(null);
                
                grabSpring.breakForce = 0;
            }
        }

        if (!playerController.isGrounded() && gameObject.GetComponent<SpringJoint>() != null)
        {
            playerManager.setGrabbing(false);
            playerManager.setLookTarget(null);

            grabSpring.breakForce = 0;
        }

        if(playerManager.getLookTarget()!=null && playerManager.grabbingObject)
        {
            playerManager.hinderanceFactor = Mathf.Clamp01((maxGrabDist - (Vector3.Distance(transform.position, playerManager.getLookTarget().position))) / maxGrabDist);
        }
        else
        {
            playerManager.hinderanceFactor = 1;
        }
	}

    public Transform getClosestGrabPoint()
    {
        GameObject[] grabObjs = GameObject.FindGameObjectsWithTag("GrabPoint");
        Transform closest = null;
        float closestDist = maxGrabDist;
        foreach(GameObject temp in grabObjs)
        {
            float tempDist = Vector3.Distance(transform.position, temp.transform.position);
            if (tempDist < closestDist)
            {
                closestDist = tempDist;
                closest = temp.transform;
            }
        }
        return closest;
    }
}
