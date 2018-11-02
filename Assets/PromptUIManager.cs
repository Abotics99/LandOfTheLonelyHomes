using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PromptUIManager : MonoBehaviour {

    Camera cam;

   public  GameObject[] prompts;
	// Use this for initialization
	void Start () {
        cam = Camera.main;
	}
	
	// Update is called once per frame
	void LateUpdate () {
        transform.rotation = Quaternion.Lerp(cam.transform.rotation,transform.rotation,0.9f);
	}

    void enable(int index)
    {
        prompts[index].GetComponent<PromptAnimator>().enable();
    }

    void enable(int index,Transform targ)
    {
        prompts[index].GetComponent<PromptAnimator>().enable(targ);
    }

    void disable(int index)
    {
        prompts[index].GetComponent<PromptAnimator>().disable();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("PromptTrigger"))
        {
            enable(other.gameObject.GetComponent<PromptTrigger>().promptIndex, other.gameObject.GetComponent<PromptTrigger>().promptTarget);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.CompareTag("PromptTrigger"))
        {
            disable(other.gameObject.GetComponent<PromptTrigger>().promptIndex);
        }
    }
}
