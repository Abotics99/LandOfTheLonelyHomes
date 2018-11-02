using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class visibilityTest : MonoBehaviour {

    public GameObject player;
    public Transform ditherNode;

    public float lerpSpeed = 0;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        RaycastHit hit;
        bool playerVisible = Physics.Raycast(transform.position, player.transform.position - transform.position, out hit, 25f) && hit.collider.gameObject.Equals(player.gameObject);
        if (!playerVisible)
        {
            ditherNode.position = Vector3.Lerp(hit.point,ditherNode.position,lerpSpeed);
        }
        else
        {
            ditherNode.position = Vector3.Lerp(transform.position, ditherNode.position, lerpSpeed);
        }
    }
}
