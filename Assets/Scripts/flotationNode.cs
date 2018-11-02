using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class flotationNode : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(255, 255, 255, 255);
        Gizmos.DrawSphere(transform.position, 0.1f);
    }
}
