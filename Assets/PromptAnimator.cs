using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PromptAnimator : MonoBehaviour {

    bool isEnabled = false;
    float timer = 0;
    public float timerSpeed = 1;

    public AnimationCurve scaleX;
    public AnimationCurve scaleY;
    public AnimationCurve posY;

    public Transform target;
    public Vector3 offset;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (isEnabled)
        {
            timer += Time.deltaTime * timerSpeed;
        }
        else
        {
            timer -= Time.deltaTime * timerSpeed;
            if (timer <= 0)
            {
                gameObject.SetActive(false);
                target = null;
            }
        }
        timer = Mathf.Clamp01(timer);

        transform.localScale = new Vector3(scaleX.Evaluate(timer), scaleX.Evaluate(timer), 1);
        if (target != null)
        {
            transform.position = target.position + offset + new Vector3(0, posY.Evaluate(timer), 0);
        }
        else
        {
            transform.localPosition = new Vector3(0, posY.Evaluate(timer), 0) + offset;
        }
	}

    public void OnEnable()
    {
        isEnabled = true;
        timer = 0;
    }

    public void enable()
    {
        gameObject.SetActive(true);
        isEnabled = true;
        timer = 0;
    }

    public void enable(Transform targ)
    {
        gameObject.SetActive(true);
        target = targ;
        isEnabled = true;
        timer = 0;
    }

    public void setTarget(Transform targ)
    {
        target = targ;
    }

    public void disable()
    {
        isEnabled = false;
    }
}
