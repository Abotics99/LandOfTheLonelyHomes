using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OceanMaskManager : MonoBehaviour {

    MeshCollider col;

    public MeshRenderer maskToHide;

	// Use this for initialization
	void Start () {
        col = GetComponent<MeshCollider>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("CameraCollider"))
        {
            Debug.Log("cam is inside!!");
            maskToHide.enabled = false;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.CompareTag("CameraCollider"))
        {
            Debug.Log("cam has left the building!!");
            maskToHide.enabled = true;
        }
    }
}
