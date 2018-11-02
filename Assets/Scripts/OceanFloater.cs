using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OceanFloater : MonoBehaviour {

    public float speed = 1;
    public Vector3 scale;
    Rigidbody rb;
    public float buoyancy = 1;
    ArrayList floatationNodes = new ArrayList();
    public float drag = 0;
    public float angularDrag = 0.05f;
    public float waterDrag = 1;
    public float waterAngularDrag = 1;

    // Use this for initialization
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        foreach (Transform child in transform) if (child.CompareTag("floatationNode"))
            {
                floatationNodes.Add(child);
            }
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        float nodes = 0;
        foreach (Transform temp in floatationNodes)
        {
            float oceanHeight = GetHeight(new Vector3(temp.position.x * scale.x, temp.position.y, temp.position.z * scale.z), Time.time * speed) * scale.y;
            if (temp.position.y < oceanHeight)
            {
                rb.AddForceAtPosition(Vector3.up * buoyancy * (oceanHeight - temp.position.y), temp.position,ForceMode.Force);
                nodes++;
            }
        }
        nodes /= floatationNodes.Count;
        rb.drag = Mathf.Lerp(drag,waterDrag,nodes);
        rb.angularDrag = Mathf.Lerp(angularDrag, waterAngularDrag, nodes);
    }



    float GetHeight(Vector3 pos, float time)
    {
        return Mathf.Sin((float)(pos.x / 10.0 + time * 1.5)) / 10
            + Mathf.Sin((float)(pos.x / 5 + time * 1.5 + Mathf.Sin(time / 2))) / 10
            + Mathf.Cos(pos.z / 10 + time * 2) / 10
            + Mathf.Sin((float)(pos.z / 5 + time * 1.5 + Mathf.Sin(time / 4))) / 10;
    }
}
