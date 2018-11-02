using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

    Transform camPos;
    CharacterController controller;
    public AnimationManager animationManager;
    public GroundTrigger groundTrigger;
    public WaterSensor waterSensor;
    private PlayerManager playerManager;

    float forwardDir;

    public float maxWalkSpeed = 1;
    public float maxJogSpeed = 1;
    public float maxRunSpeed = 1;
    public float accelerationLerp = 0.1f;
    public float jumpHeight;
    public float gravity = 20f;
    public float bouyancy = 1;
    public float waterFriction = 0.9f;

    bool isFloatable = true;

    Vector3 velocity;
    Vector3 lastVelocity;
    Vector3 acceleration;
    Vector2 movement;

    // Use this for initialization
    void Start () {
        camPos = Camera.main.transform;
        controller = GetComponent<CharacterController>();
        playerManager = transform.root.gameObject.GetComponent<PlayerManager>();
    }
	
	// Update is called once per frame
	void FixedUpdate () {
        forwardDir = (camPos.rotation.eulerAngles.y-180) * Mathf.Deg2Rad;//get the forward vecor based off of the camera

        Vector2 playerInput = new Vector2(Input.GetAxis("Horizontal"), -Input.GetAxis("Vertical")); // get raw player stick direction

        if (playerManager.dialogActive)
        {
            playerInput = Vector2.zero;
        }

        float moveSpeed = maxWalkSpeed;

        if (Input.GetKey(KeyCode.LeftShift) && groundTrigger.getSlope()>=-0.5f)
        {
            moveSpeed = maxRunSpeed;
        }

        moveSpeed = moveSpeed * (1-Mathf.Abs(groundTrigger.getSlope()/2));

        Vector2 camBasedMovement = new Vector3(playerInput.y * Mathf.Sin(forwardDir) + playerInput.x * Mathf.Sin(forwardDir - Mathf.PI / 2), playerInput.y * Mathf.Cos(forwardDir) + playerInput.x * Mathf.Cos(forwardDir - Mathf.PI / 2)).normalized * moveSpeed; //calcualate the movement vector with player input and the camera forward vector

        if (playerManager.grabbingObject)
        {
            Vector3 flatFacingVec = playerManager.getLookTarget().position - transform.position;

            camBasedMovement *= playerManager.hinderanceFactor + Mathf.Clamp01(Vector2.Dot(new Vector2(flatFacingVec.x, flatFacingVec.z), camBasedMovement));
            
        }
        else
        {
            camBasedMovement *= playerManager.hinderanceFactor;
        }

        movement = Vector2.Lerp(movement , camBasedMovement, accelerationLerp);

        velocity = new Vector3(movement.x * Time.deltaTime, velocity.y, movement.y * Time.deltaTime);

        //jumping mechanics and gravity
        if (groundTrigger.isGrounded())
        {
            velocity.y = -0.01f;
            if (Input.GetKeyDown(KeyCode.Space) && !playerManager.grabbingObject)
            {
                velocity.y = jumpHeight;
            }
        }
        else if(isFloatable && waterSensor.getOceanSurface(transform) > 0)
        {
            velocity.y += waterSensor.getOceanSurface(transform) * bouyancy;
            velocity.y = velocity.y * waterFriction;
        }

        if(!isGrounded())
        {
            velocity.y -= gravity * Time.deltaTime;
        }

        controller.Move(velocity);
	}

    private void LateUpdate()
    {
        acceleration = velocity - lastVelocity;
        lastVelocity = velocity;
    }

    public Vector3 getVelocity()
    {
        return velocity;
    }

    public Vector3 getAcceleration()
    {
        return acceleration;
    }

    public bool isGrounded()
    {
        return groundTrigger.isGrounded();
    }

    public void setFloatable(bool floatable)
    {
        isFloatable = floatable;
    }
}
