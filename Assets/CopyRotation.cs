using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CopyRotation : MonoBehaviour {

    public Transform targetTransform;
    public bool useFixedUpdate = false;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void LateUpdate () {
        if (!useFixedUpdate)
        {
            transform.rotation = targetTransform.rotation;
        }
	}

    private void FixedUpdate()
    {
        if (useFixedUpdate)
        {
            transform.rotation = targetTransform.rotation;
        }
    }
}
