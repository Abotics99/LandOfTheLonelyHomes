using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class cameraCenter : MonoBehaviour {

    Transform cam;
    public Vector3 offset;
    public Vector3 copyAxis;

	// Use this for initialization
	void Start () {
        cam = Camera.main.transform;
    }
	
	// Update is called once per frame
	void Update () {
        Vector3 pos = new Vector3(cam.position.x * copyAxis.x,cam.position.y * copyAxis.y, cam.position.z * copyAxis.z);
        transform.position = pos + offset;
    }
}
