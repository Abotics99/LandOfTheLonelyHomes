using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GroundTrigger : MonoBehaviour {

    public LayerMask layerMask;
    public bool grounded;
    public AnimationManager animManager;
    public float radius = 0.5f;
    public float length = 1;
    Vector3 groundNormal;
    public float groundSlope = 0;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void FixedUpdate()
    {
        RaycastHit hit;
        if (Physics.SphereCast(transform.position,radius, -transform.up,out hit, length, layerMask))
        {
            transform.parent.transform.parent = hit.transform;
            animManager.turn(transform.parent.transform.rotation.eulerAngles.y);
            transform.parent.transform.rotation = Quaternion.Euler(0, 0, 0);
            transform.parent.transform.localScale = new Vector3(1/hit.transform.localScale.x, 1 / hit.transform.localScale.y, 1 / hit.transform.localScale.z);
            grounded = true;
            groundNormal = hit.normal;
        }
        else
        {
            transform.parent.transform.parent = null;
            transform.parent.transform.localScale = new Vector3(1, 1, 1);
            grounded = false;
            groundNormal = Vector3.up;
        }
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.DrawWireSphere(transform.position,radius);
        Gizmos.DrawRay(transform.position, -transform.up * length);
        Gizmos.DrawWireSphere(transform.position + (-transform.up * length), radius);
    }

    public bool isGrounded()
    {
        return grounded;
    }

    public Vector3 getGroundNormal()
    {
        return groundNormal;
    }

    public float getSlope()
    {
        groundSlope = Mathf.Lerp(groundSlope, Vector3.Dot(groundNormal, animManager.transform.forward), 0.5f);
        return groundSlope;
    }
}
