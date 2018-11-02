using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PathManager : MonoBehaviour {

    public List<Transform> checkpoints;
    public bool isLoop = false;

	// Use this for initialization
	void Start () {
        getPathPoints();
    }
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnDrawGizmos()
    {
        if (transform.childCount > 1)
        {
            for (int i = 0; i < transform.childCount-1; i++)
            {
                Gizmos.DrawLine(transform.GetChild(i).position, transform.GetChild(i + 1).position);
            }
            if (isLoop)
            {
                Gizmos.DrawLine(transform.GetChild(transform.childCount - 1).position, transform.GetChild(0).position);
            }
        }
    }

    public int getNextIndex(int index)
    {
        if (isLoop)
        {
            return (index+1) % checkpoints.Count;
        }
        return Mathf.Clamp(index + 1, 0, checkpoints.Count-1);
    }

    public Transform getTransform(int index)
    {
        if (checkpoints.Count <= 0)
        {
            getPathPoints();
            return checkpoints[index];
        }
        else
        {
            return checkpoints[index];
        }
    }

    void getPathPoints()
    {
        checkpoints.Clear();
        foreach (Transform child in transform)
        {
            checkpoints.Add(child);
        }
    }
}
