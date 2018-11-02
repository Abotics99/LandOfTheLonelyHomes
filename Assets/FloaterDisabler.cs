using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloaterDisabler : MonoBehaviour {
    // Use this for initialization
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<OceanFloater>() != null)
        {
            other.gameObject.GetComponent<OceanFloater>().enabled = false;
        }else if (other.gameObject.GetComponent<PlayerController>() != null)
        {
            Debug.Log("player in house");
            other.gameObject.GetComponent<PlayerController>().setFloatable(false);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.GetComponent<OceanFloater>() != null)
        {
            other.gameObject.GetComponent<OceanFloater>().enabled = true;
        }else if (other.gameObject.GetComponent<PlayerController>() != null)
        {
            Debug.Log("player not in house");
            other.gameObject.GetComponent<PlayerController>().setFloatable(true);
        }
    }
}
