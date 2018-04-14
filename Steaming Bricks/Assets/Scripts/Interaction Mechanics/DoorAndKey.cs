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
        }
    }

    public void OpenDoor()
    {
        //check if the player is close enough to open door
        float difference = Vector3.Distance(GameManager.Instance.player.transform.position, this.gameObject.transform.position); //dista between player and this hiding spot
        if (difference <= interactDistance && collected)
        {
            this.gameObject.SetActive(false);
            dangleKey.SetActive(false); //hide dangling key
        }
    }

}
