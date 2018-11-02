using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour {

    public float horizontalSpeed = 1;
    public float verticalSpeed = 1;

    float pitch;
    float yaw;

    public float minPitch;
    public float maxPitch;

    float verticalVelocity;
    float horizontalVelocity;

    public float damping = 0.9f;

    public GameObject cam;

    public float cameraDistance = 5;
    public float cameraMaxDistance = 10;
    public float cameraMinDistance = 0;
    public float cameraDistanceSpeed = 1;
    public Vector3 cameraOffset;
    public float castRadius = 0.5f;
    public LayerMask rayCastLayers;
    public float camDistanceLerp;
    public float camWallOffset = 0.5f;

	// Use this for initialization
	void Start () {
		
	}

    private void FixedUpdate()
    {
        float camDistTemp = cameraDistance;

        RaycastHit hit;

        if (Physics.SphereCast(transform.position, castRadius, cam.transform.position - transform.position, out hit, (int)cameraDistance + 1, rayCastLayers))
        {
            float distTemp = Vector3.Distance(transform.position, hit.point) - camWallOffset;
            if (camDistTemp > distTemp)
            {
                camDistTemp = distTemp;
            }
        }

        cam.transform.localPosition = cameraOffset + new Vector3(0, 0, Mathf.Lerp(cam.transform.localPosition.z, -camDistTemp, camDistanceLerp));
    }

    // Update is called once per frame
    void LateUpdate () {

        cameraDistance -= Input.mouseScrollDelta.y * cameraDistanceSpeed;

        cameraDistance = Mathf.Clamp(cameraDistance, cameraMinDistance, cameraMaxDistance);

        if (cameraDistance > 0)
        {
            Cursor.lockState = CursorLockMode.None;
            if (Input.GetMouseButton(1))
            {
                yaw += Input.GetAxis("Mouse X") * horizontalSpeed;
                pitch -= Input.GetAxis("Mouse Y") * verticalSpeed;
                horizontalVelocity = Input.GetAxis("Mouse X") * horizontalSpeed;
                verticalVelocity = Input.GetAxis("Mouse Y") * verticalSpeed;
            }
            else
            {
                yaw += horizontalVelocity;
                pitch -= verticalVelocity;
                horizontalVelocity *= damping;
                verticalVelocity *= damping;
            }
        }
        else
        {
            Cursor.lockState = CursorLockMode.Locked;
            yaw += Input.GetAxis("Mouse X") * horizontalSpeed;
            pitch -= Input.GetAxis("Mouse Y") * verticalSpeed;
        }
        

        pitch = Mathf.Clamp(pitch, minPitch, maxPitch);

        Vector3 camRot = new Vector3(pitch,yaw,0);

        transform.rotation = Quaternion.Euler(camRot);
        
    }
}
