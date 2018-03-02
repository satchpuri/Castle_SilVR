using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HidingSpace : MonoBehaviour {
    [SerializeField] private LayerMask hiddenLayer;
    [SerializeField] private float interactDistance;
    public bool hidding;

	// Use this for initialization
	void Start () {
        hidding = false;
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void Hide()
    {
        //check if the player is clsoe enough to hide
        float difference = Vector3.Distance(GameManager.Instance.player.transform.position, this.gameObject.transform.position); //dista between player and this hiding spot
        if(difference <= interactDistance)
        {
            //set hidden variable to true
            hidding = true;

            //change tiny terry layer mask so he wont be picked up by guards
            GameManager.Instance.player.layer = 10;

            //stop tiny from moving
            GameManager.Instance.player.GetComponent<PlayerMovement>().canMove = false;

            //turn tiny terry object invisible - coroutine?
            StartCoroutine(FadeOut(GameManager.Instance.player));
        }
    }

    public void StopHidding()
    {
        //set hidden variable to false
        hidding = false;

        //chnage tiny terry mask back to default
        GameManager.Instance.player.layer = 0; //0 is Default layer

        //allow tiny from moving
        GameManager.Instance.player.GetComponent<PlayerMovement>().canMove = true;

        //make tiny terry visible again
        StartCoroutine(FadeIn(GameManager.Instance.player));
    }

    /// <summary>
    /// Fade the specified object
    /// </summary>
    /// <param name="affectedObj">Affected object by fade</param>
    IEnumerator FadeIn(GameObject affectedObj)
    {
        //get objs rednerer colour
        Color c = affectedObj.GetComponent<Renderer>().material.color;

        //loop and edit colour
        for (float f = 1f; f <= 255; f += 1)
        {
            //update alpha
            c.a = f;

            //give new colour to obj
            affectedObj.GetComponent<Renderer>().material.color = c;

            //idk man it was in the example
            yield return null;
        }
    }

    /// <summary>
    /// Fade the specified object
    /// </summary>
    /// <param name="affectedObj">Affected object by fade</param>
    IEnumerator FadeOut(GameObject affectedObj)
    {
        //get objs rednerer colour
        Color c = affectedObj.GetComponent<Renderer>().material.color;

        //loop and edit colour
        for (float f = 1f; f >= 0; f -= 1)
        {
            //update alpha
            c.a = f;

            //give new colour to obj
            affectedObj.GetComponent<Renderer>().material.color = c;

            //idk man it was in the example
            yield return null;
        }
    }
}
