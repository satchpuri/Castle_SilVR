using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class HidingSpace : MonoBehaviour {
    [SerializeField] private LayerMask hiddenLayer;
    [SerializeField] private float interactDistance;
    public bool hidding;
    private ParticleSystem smoke;

    // Use this for initialization
    void OnEnable()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        smoke = GameManager.Instance.player.GetComponent<ParticleSystem>(); //save players particle system - GameObject.FindGameObjectWithTag("Player")
    }

    void OnDisable()
    {
        smoke = null;
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }
      

	// Use this for initialization
	void Start () {
        hidding = false; //initally be hiding

	}
	
	// Update is called once per frame
	void Update () {
		
	}
        

    public void Hide()
    {
        SoundManager.Instance.PlaySfxOnce("indoor-footsteps", 70);
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
            smoke.Play(); //play smoke particle anim
        }
    }

    public void StopHidding()
    {
        //set hidden variable to false
        hidding = false;

        //make tiny terry visible again
        StartCoroutine(FadeIn(GameManager.Instance.player));
        smoke.Play(); //play smoke particle anim

        //allow tiny from moving
        GameManager.Instance.player.GetComponent<PlayerMovement>().canMove = true;

        //chnage tiny terry mask back to default
        GameManager.Instance.player.layer = 0; //0 is Default layer
    }

    /// <summary>
    /// Fade the specified object
    /// </summary>
    /// <param name="affectedObj">Affected object by fade</param>
    IEnumerator FadeIn(GameObject affectedObj)
    {
        yield return new WaitForSeconds(.6f);
        GameManager.Instance.player.GetComponent<Renderer>().enabled = true; //turn on mesh
    }

    /// <summary>
    /// wait to pop away
    /// </summary>
    /// <param name="affectedObj">Affected object by fade</param>
    IEnumerator FadeOut(GameObject affectedObj)
    {
        yield return new WaitForSeconds(.6f);
        GameManager.Instance.player.GetComponent<Renderer>().enabled = false; //turn off mesh renderer to make tiny terry invible
    }
}
