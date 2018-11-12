using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlopeSnap : MonoBehaviour {

    PlayerController playerController;
    RigidBodyCharacterController controller;
    public GroundTrigger groundTrig;
    public LayerMask mask;
    public float snapDistance = 1.5f; //Adjust this based on the CharacterController's height and the slopes you want to handle - my CharacterController's height is 1.8 

    // Use this for initialization
    void Start () {
        playerController = GetComponent<PlayerController>();
        controller = GetComponent<RigidBodyCharacterController>();
    }
	
	// Update is called once per frame
	void Update () {
        if (groundTrig.isGrounded() == false)
        {
            RaycastHit hitInfo = new RaycastHit();
            if (Physics.Raycast(new Ray(transform.position, Vector3.down), out hitInfo, snapDistance,mask))
            {
                controller.Move(hitInfo.point - transform.position);
            }
        }
    }
}
