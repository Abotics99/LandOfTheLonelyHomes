using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAudioManager : MonoBehaviour {

    public Transform footAudioOrigin;

    public Transform leftFoot;
    public Transform rightFoot;
    public Transform collisionOrigin;

    public float footGroundedThreshold;

    public bool leftFootGrounded;
    public bool rightFootGrounded;

    public AudioClip footstep;

    AudioSource footAudioPlayer;

	// Use this for initialization
	void Start () {
        footAudioPlayer = footAudioOrigin.gameObject.GetComponent<AudioSource>();
	}
	
	// Update is called once per frame
	void Update () {
        if(collisionOrigin.position.y - leftFoot.position.y > footGroundedThreshold)
        {
            if (!leftFootGrounded)
            {
                playFootStep();
            }
            leftFootGrounded = true;
        }
        else
        {
            leftFootGrounded = false;
        }

        if (collisionOrigin.position.y - rightFoot.position.y > footGroundedThreshold)
        {
            if (!rightFootGrounded)
            {
                playFootStep();
            }
            rightFootGrounded = true;
        }
        else
        {
            rightFootGrounded = false;
        }
        footAudioOrigin.position = new Vector3(collisionOrigin.position.x, (leftFoot.position.y + rightFoot.position.y)/2, collisionOrigin.position.z);
    }

    void playFootStep()
    {
        footAudioPlayer.pitch = Random.Range(0.8f, 1f);
        footAudioPlayer.PlayOneShot(footstep,Random.Range(0.5f,0.75f));
    }
}
