using UnityEngine;
using System.Collections;

public class GuardDistraction : MonoBehaviour
{
    private void Start()
    {
        for (int i = 0; i < GameManager.Instance.guards.Length; i++)
        {
            GameManager.Instance.guards[i].GetComponent<GuardMovement>().seeking = false;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            for (int i = 0; i < GameManager.Instance.guards.Length; i++)
            {
                GameManager.Instance.guards[i].GetComponent<GuardMovement>().SetDistracted();
            }
        }
    }
}
