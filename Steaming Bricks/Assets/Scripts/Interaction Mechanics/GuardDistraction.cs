using UnityEngine;
using System.Collections;

public class GuardDistraction : MonoBehaviour
{
    private bool triggerOnce = false;
    private void OnTriggerEnter(Collider other)
    {
        if (!triggerOnce)
        {
            if (other.tag == "Player")
            {
                SoundManager.Instance.PlaySfxOnce("crash", 100);
                for (int i = 0; i < GameManager.Instance.guards.Length; i++)
                {
                    GameManager.Instance.guards[i].GetComponent<GuardMovement>().SetDistracted();
                }
                triggerOnce = true;
            }
        }
    }
}
