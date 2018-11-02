using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DialogPopupManager : MonoBehaviour {

    public bool isEnabled = false;
    float boxAnimTimer = 0;
    public float timerSpeed = 1;

    public AnimationCurve posY;
    public AnimationCurve rotation;

    RectTransform rectTransform;
    RectTransform continueArrow;
    public Text dialogText;

    public List<string> dialog = new List<string>();
    public int currentTextLength;
    public float letterDelay = 0.1f;
    float dialogTimer;

    public bool allDialogDone;
    public bool nextDialog;

    PlayerManager player;

    // Use this for initialization
    void Start () {
        player = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerManager>();
        rectTransform = GetComponent<RectTransform>();
        rectTransform.anchoredPosition = new Vector3(0, posY.Evaluate(boxAnimTimer), 0) * 100;
    }
	
	// Update is called once per frame
	void Update () {
        if (isEnabled)
        {
            player.setTalking(true);
            boxAnimTimer += Time.deltaTime * timerSpeed;
            if (Input.GetKeyDown(KeyCode.E))
            {
                if (currentTextLength == dialog[0].Length)
                {
                    doNextDialog();
                }
                else
                {
                    currentTextLength = dialog[0].Length;
                }
            }
        }
        else
        {
            boxAnimTimer -= Time.deltaTime * timerSpeed;
            if (boxAnimTimer <= 0)
            {
                gameObject.SetActive(false);
                player.setTalking(false);
                player.setLookTarget(null);
            }
        }
    }

    private void OnGUI()
    {
        updateDialogBoxAnim();
        updateTextScroll();
    }

    void updateTextScroll()
    {
        if (boxAnimTimer >= 1 && dialog.Count>0)
        {
            dialogTimer += Time.deltaTime;
            if (dialogTimer >= letterDelay)
            {
                dialogTimer = 0;
                currentTextLength++;
            }
            
            currentTextLength = Mathf.Clamp(currentTextLength, 0, dialog[0].Length);
            nextDialog = currentTextLength == dialog[0].Length;
            dialogText.text = dialog[0].Substring(0, currentTextLength);
        }
        allDialogDone = dialog.Count == 0;
    }

    void doNextDialog()
    {
        if (dialog.Count > 1)
        {
            dialog.RemoveAt(0);
            currentTextLength = 0;
        }
        else if(dialog.Count == 1)
        {
            dialog.RemoveAt(0);
            currentTextLength = 0;
            allDialogDone = true;
            disable();
        }
    }

    void updateDialogBoxAnim()
    {
        boxAnimTimer = Mathf.Clamp01(boxAnimTimer);
        rectTransform.anchoredPosition = new Vector3(0, posY.Evaluate(boxAnimTimer), 0) * 100;
        rectTransform.localRotation = Quaternion.Euler(new Vector3(0, 0, rotation.Evaluate(boxAnimTimer)));
    }

    public void OnEnable()
    {
        dialog.Clear();
        dialogText.text = "";
        isEnabled = true;
        boxAnimTimer = 0;
    }

    public bool enable()
    {
        if (!gameObject.activeSelf)
        {
            gameObject.SetActive(true);
            isEnabled = true;
            boxAnimTimer = 0;
            return true;
        }
        return false;
    }

    public void disable()
    {
        isEnabled = false;
    }

    public void setText(string newDialog)
    {
        if (enable())
        {
            currentTextLength = 0;
            dialog.Clear();
            dialog.Add(newDialog);
        }
    }

    public void setText(string[] newDialog)
    {
        if (enable())
        {
            currentTextLength = 0;
            dialog.Clear();
            foreach (string temp in newDialog)
            {
                dialog.Add(temp);
            }
        }
    }

    public bool isDialogDone()
    {
        return allDialogDone;
    }
}
