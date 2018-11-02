using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatController : MonoBehaviour {

    public float forwardForce = 1;
    Rigidbody rb;
    public Transform rudder;
    public float turnForce = 0.1f;

    Vector3 forwardMovement;
    Vector3 turningMovement;

	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
	}

    private void Update()
    {
        forwardMovement = transform.forward * Input.GetAxis("Vertical") * forwardForce;
        turningMovement = transform.right * Vector3.Dot(transform.forward, rb.velocity) * Input.GetAxis("Horizontal") * turnForce;
    }

    // Update is called once per frame
    void FixedUpdate () {
        if ((GetHeight(rudder.position, Time.time) * 1) > rudder.position.y)
        {
            rb.AddForce(forwardMovement, ForceMode.Force);
            rb.AddForceAtPosition(turningMovement, rudder.position, ForceMode.Force);
        }
    }

    float GetHeight(Vector3 pos, float time)
    {
        return Mathf.Sin((float)(pos.x / 10.0 + time * 1.5)) / 10
            + Mathf.Sin((float)(pos.x / 5 + time * 1.5 + Mathf.Sin(time / 2))) / 10
            + Mathf.Cos(pos.z / 10 + time * 2) / 10
            + Mathf.Sin((float)(pos.z / 5 + time * 1.5 + Mathf.Sin(time / 4))) / 10;
    }
}
