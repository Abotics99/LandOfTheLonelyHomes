using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogObject : MonoBehaviour {
    public Transform lookTarget;
    public string[] dialog;

	// Use this for initialization
	void Start () {
        
    }
	
	// Update is called once per frame
	void Update () {
        
	}

    public Transform getLookTarget()
    {
        if (lookTarget != null)
        {
            return lookTarget;
        }
        return transform;
    }
}
