using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerManager : MonoBehaviour {

    public float health;
    public bool dialogActive = false;
    public bool grabbingObject = false;
    public float hinderanceFactor = 1;

    private Transform lookTarget;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void setTalking(bool isTalking)
    {
        dialogActive = isTalking;
    }

    public void setLookTarget(Transform targ)
    {
        lookTarget = targ;
    }

    public Transform getLookTarget()
    {
        return lookTarget;
    }

    public void setGrabbing(bool isGrabbing)
    {
        grabbingObject = isGrabbing;
    }
}
