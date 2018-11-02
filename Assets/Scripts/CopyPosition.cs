using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CopyPosition : MonoBehaviour {

    public Transform target;

    public Vector3 offset;

    public float lerpSpeed;

    public bool useFixedUpdate = false;

    // Use this for initialization
    void Start () {
        //transform.position = Vector3.Lerp(transform.position, target.position + offset, lerpSpeed);
    }

    void LateUpdate()
    {
        if (!useFixedUpdate)
        {
            transform.position = Vector3.Lerp(transform.position, target.position + offset, lerpSpeed);
        }
    }

    private void FixedUpdate()
    {
        if (useFixedUpdate)
        {
            transform.position = Vector3.Lerp(transform.position, target.position + offset, lerpSpeed);
        }
    }
}
