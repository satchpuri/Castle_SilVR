using UnityEngine;
using System.Collections;

public class Coin : MonoBehaviour
{
    //Coin Collection
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            GameManager.Instance.coins_remaining--;
            this.gameObject.SetActive(false);

            //Goes to next level?
            if (GameManager.Instance.coins_remaining == 0)
            {
                LevelManager.Instance.NextScene();
            }
        }
    }
}
