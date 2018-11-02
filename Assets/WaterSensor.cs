using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterSensor : MonoBehaviour {

    public Vector3 scale;
    public float speed = 1;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public float getOceanSurface(Transform transform)
    {
        float oceanHeight = GetHeight(new Vector3(transform.position.x * scale.x, transform.position.y, transform.position.z * scale.z), Time.time * speed) * scale.y;
        return oceanHeight - transform.position.y;
    }

    float GetHeight(Vector3 pos, float time)
    {
        return Mathf.Sin((float)(pos.x / 10.0 + time * 1.5)) / 10
            + Mathf.Sin((float)(pos.x / 5 + time * 1.5 + Mathf.Sin(time / 2))) / 10
            + Mathf.Cos(pos.z / 10 + time * 2) / 10
            + Mathf.Sin((float)(pos.z / 5 + time * 1.5 + Mathf.Sin(time / 4))) / 10;
    }
}
