using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RigidBodyCharacterController : MonoBehaviour {

    Rigidbody rb;

    Vector3 movementTarget;

	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void Move(Vector3 movement)
    {
        movementTarget = new Vector3(movement.x,movement.y,movement.z);
    }

    private void FixedUpdate()
    {
        rb.MovePosition(transform.position + movementTarget);
    }

    public void jump(float jumpForce)
    {
        rb.AddForce(transform.up * jumpForce, ForceMode.Impulse);
    }
}
