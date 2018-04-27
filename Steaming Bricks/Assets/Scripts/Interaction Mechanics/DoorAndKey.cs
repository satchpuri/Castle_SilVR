using UnityEngine;
using System.Collections;

public class DoorAndKey : MonoBehaviour
{
    [SerializeField] private GameObject dangleKey;
    [SerializeField] private float interactDistance;
    private bool collected;
    [SerializeField] private GameObject key;

    // Use this for initialization
    void Start()
    {
        collected = false;
		transform.GetChild (0).gameObject.GetComponent<Billboard> ().exception = true; //make the tinyTerry (tT) icon not respond by default
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void CollectKey()
    {
        //check if the player is close enough to collect key
        float difference = Vector3.Distance(GameManager.Instance.player.transform.position, key.transform.position); //dista between player and this hiding spot
        if (difference <= interactDistance)
        {
            collected = true;
            key.SetActive(false);
            dangleKey.SetActive(true); //show dangling key
			transform.GetChild (0).gameObject.GetComponent<Billboard> ().exception = false; //turn on tT icon checking
			transform.GetChild (1).gameObject.GetComponent<Billboard> ().exception = true; //turn off lock icon checking
			transform.GetChild (1).gameObject.GetComponent<SpriteRenderer> ().enabled = false; //turn off lock icon in case it was on when cancelled
        }
    }

    public void OpenDoor()
    {
        //check if the player is close enough to open door
        SoundManager.Instance.PlaySfxOnce("unlocking-door-lock", 100);
        float difference = Vector3.Distance(GameManager.Instance.player.transform.position, this.gameObject.transform.position); //dista between player and this hiding spot
        if (difference <= interactDistance && collected)
        {
            this.gameObject.SetActive(false);
            dangleKey.SetActive(false); //hide dangling key
			transform.GetChild (0).gameObject.GetComponent<Billboard> ().exception = true; //turn off tT icon checking (just in case this doesn't disable)
			transform.GetChild (0).gameObject.GetComponent<SpriteRenderer> ().enabled = false; //turn off tT icon in case it was on when cancelled
        }
    }

}
