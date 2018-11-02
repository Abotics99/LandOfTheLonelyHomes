using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class copyRotationLocal : MonoBehaviour {

    public Transform childTarget;

    copyRotationLocal copyRot;

    Quaternion currentRotation;

    public float lerpSpeed;

    public bool isRoot;

    Quaternion rotOffset;
	// Use this for initialization
	void Start () {
        if (childTarget != null)
        {
            copyRot = childTarget.gameObject.GetComponent<copyRotationLocal>();
        }
        currentRotation = transform.rotation;
	}
	
	// Update is called once per frame
	void Update () {
        if (isRoot)
        {
            copyRot.doRotate(transform.rotation, lerpSpeed);
        }
	}

    public void doRotate(Quaternion targetRot, float lerpSpd)
    {
        currentRotation = Quaternion.Lerp(currentRotation, targetRot, lerpSpd);

        transform.rotation = currentRotation;

        if (childTarget == null)
        {
            return;
        }

        copyRot.doRotate(transform.rotation, lerpSpd);
    }
}
