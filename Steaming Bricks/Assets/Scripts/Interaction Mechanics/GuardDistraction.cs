using UnityEngine;
using System.Collections;

public class GuardDistraction : MonoBehaviour
{
	public GameObject[] guards;
    private bool triggerOnce = false;

	void Start() {

		foreach (GameObject guard in guards) {

			guard.transform.GetChild (1).GetComponent<Billboard> ().exception = true;
		}
	}

    private void OnTriggerEnter(Collider other)
    {
        if (!triggerOnce)
        {
            if (other.tag == "Player")
            {
                SoundManager.Instance.PlaySfxOnce("crash", 100);
				for (int i = 0; i < guards.Length; i++)
                {
                    //GameManager.Instance.guards[i].GetComponent<GuardMovement>().SetDistracted();
					guards[i].GetComponent<GuardMovement>().SetDistracted();
					guards[i].transform.GetChild (1).gameObject.GetComponent<SpriteRenderer> ().enabled = true;
                }
                triggerOnce = true;
            }
        }
    }
}
