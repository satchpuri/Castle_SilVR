using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialTextActivation : MonoBehaviour {

    // Use this for initialization

    public GameObject textNode0;
    public GameObject textNode1;
    public GameObject textNode2;
    public GameObject textNode3;
    public GameObject textNode4;
    public GameObject textNode5;
    public GameObject textNode6;
    public GameObject textNode7;

    public GameObject player;

    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        //hard coded for each text node
        if (player.transform.position.z < textNode0.transform.position.z && player.transform.position.z > textNode1.transform.position.z)
        {
            this.gameObject.transform.GetChild(0).gameObject.SetActive(true);
        }
        else
        {
            this.gameObject.transform.GetChild(0).gameObject.SetActive(false);
        }

        if (player.transform.position.z < textNode1.transform.position.z && player.transform.position.z > textNode2.transform.position.z)
        {
            this.gameObject.transform.GetChild(1).gameObject.SetActive(true);
        }
        else
        {
            this.gameObject.transform.GetChild(1).gameObject.SetActive(false);
        }

        if (player.transform.position.z < textNode2.transform.position.z && player.transform.position.z > textNode3.transform.position.z)
        {
            this.gameObject.transform.GetChild(2).gameObject.SetActive(true);
        }
        else
        {
            this.gameObject.transform.GetChild(2).gameObject.SetActive(false);
        }

        if (player.transform.position.z < textNode3.transform.position.z && player.transform.position.z > textNode4.transform.position.z)
        {
            this.gameObject.transform.GetChild(3).gameObject.SetActive(true);
        }
        else
        {
            this.gameObject.transform.GetChild(3).gameObject.SetActive(false);
        }

        if (player.transform.position.z < textNode4.transform.position.z && player.transform.position.z > textNode5.transform.position.z)
        {
            this.gameObject.transform.GetChild(4).gameObject.SetActive(true);
        }
        else
        {
            this.gameObject.transform.GetChild(4).gameObject.SetActive(false);
        }

        if (player.transform.position.z < textNode5.transform.position.z && player.transform.position.z > textNode6.transform.position.z)
        {
            this.gameObject.transform.GetChild(5).gameObject.SetActive(true);
        }
        else
        {
            this.gameObject.transform.GetChild(5).gameObject.SetActive(false);
        }

        if (player.transform.position.z < textNode6.transform.position.z && player.transform.position.z > textNode7.transform.position.z)
        {
            this.gameObject.transform.GetChild(6).gameObject.SetActive(true);
        }
        else
        {
            this.gameObject.transform.GetChild(6).gameObject.SetActive(false);
        }

        

    }
}
