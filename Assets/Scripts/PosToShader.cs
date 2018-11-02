using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PosToShader : MonoBehaviour {

    public Transform target;
    public string variableName;
    public string shaderName;
    Renderer rend;

    // Use this for initialization
    void Start()
    {
        rend = GetComponent<Renderer>();
        rend.material.shader = Shader.Find(shaderName);
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 pos = target.position;
        rend.material.SetVector(variableName, pos);
    }
}
