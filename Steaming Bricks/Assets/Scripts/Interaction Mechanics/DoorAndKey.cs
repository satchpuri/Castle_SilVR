using UnityEngine;
using System.Collections;

public class DoorAndKey : MonoBehaviour
{
    [SerializeField] private float interactDistance;
    private bool collected;

    // Use this for initialization
    void Start()
    {
        collected = false;
        if(interactDistance <= 0)
        {
            interactDistance = 5;
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
    
    public void CollectKey()
    {
        //check if the player is close enough to collect key
        float difference = Vector3.Distance(GameManager.Instance.player.transform.position, this.gameObject.transform.position); //dista between player and this hiding spot
        if (difference <= interactDistance)
        {
            collected = true;
            this.gameObject.SetActive(false);
        }
    }

    public void OpenDoor()
    {
        //check if the player is close enough to open door
        float difference = Vector3.Distance(GameManager.Instance.player.transform.position, this.gameObject.transform.position); //dista between player and this hiding spot
        if (difference <= interactDistance && collected)
        {
            this.gameObject.SetActive(false);            
        }
    }

}
