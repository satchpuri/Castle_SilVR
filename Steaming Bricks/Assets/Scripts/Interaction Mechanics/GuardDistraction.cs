using UnityEngine;
using System.Collections;

public class GuardDistraction : MonoBehaviour
{
    [SerializeField] private GameObject distraction;
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            for (int i = 0; i < GameManager.Instance.guards.Length; i++)
            {
                GameManager.Instance.guards[i].GetComponent<GuardMovement>().distracted = true;
                GameManager.Instance.guards[i].transform.LookAt(distraction.transform);
            }
        }
    }
}
