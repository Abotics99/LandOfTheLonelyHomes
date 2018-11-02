using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrassController : MonoBehaviour {

    public Transform deflector;
    Renderer rend;

	// Use this for initialization
	void Start () {
        rend = GetComponent<Renderer>();
        rend.material.shader = Shader.Find("Grass");
	}
	
	// Update is called once per frame
	void Update () {
        Vector3 pos = deflector.position;
        rend.material.SetVector("Deflector", pos);
	}
}
