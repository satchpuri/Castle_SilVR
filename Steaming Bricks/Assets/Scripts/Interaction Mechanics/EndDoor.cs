using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class EndDoor : MonoBehaviour {

    //temp Scene changing until we figure SceneManager issue out

	// Use this for initialization
	void Start () {
        
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    //trigger next scene when player enters door
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            //get current scene index and up by 1 - using mod t wrap back to 0 at end of scene list
            int nextIndex = SceneManager.GetActiveScene().buildIndex + 1 % SceneManager.sceneCountInBuildSettings;

            if(nextIndex == 3)
            {
                SceneManager.SetActiveScene(SceneManager.GetSceneByBuildIndex(0));
            }
            else
            {
                //goto that scene
                //Scene scene = SceneManager.LoadSceneAsync(nextIndex);
                SceneManager.SetActiveScene(SceneManager.GetSceneByBuildIndex(nextIndex));
            }
            
            
        }
    }
}
