using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogManager : MonoBehaviour {

    public float maxTalkDist;

    DialogPopupManager dialog;
    PlayerManager playerManager;

    // Use this for initialization
    void Start () {
        dialog = GameObject.FindGameObjectWithTag("Dialog").transform.GetChild(0).GetComponent<DialogPopupManager>();
        playerManager = transform.root.gameObject.GetComponent<PlayerManager>();
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.E))
        {
            GameObject nextDialog = getClosestDialog();
            if (nextDialog != null)
            {
                DialogObject dialogObj = nextDialog.GetComponent<DialogObject>();
                dialog.setText(dialogObj.dialog);
                playerManager.setLookTarget(dialogObj.getLookTarget());
            }
        }
    }

    public GameObject getClosestDialog()
    {
        GameObject[] dialogObjs = GameObject.FindGameObjectsWithTag("DialogObject");
        GameObject closest = null;
        float closestDist = maxTalkDist;
        foreach (GameObject temp in dialogObjs)
        {
            float tempDist = Vector3.Distance(transform.position, temp.transform.position);
            if (tempDist < closestDist)
            {
                closestDist = tempDist;
                closest = temp;
            }
        }
        return closest;
    }
}
