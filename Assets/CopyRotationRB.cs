using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CopyRotationRB : MonoBehaviour {

    public Transform target;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void FixedUpdate()
    {
        gameObject.GetComponent<Rigidbody>().MoveRotation(target.rotation);
    }
}
