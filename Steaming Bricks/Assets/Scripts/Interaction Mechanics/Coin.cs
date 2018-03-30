using UnityEngine;
using System.Collections;

public class Coin : MonoBehaviour
{
    //Coin Collection
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            GameManager.Instance.number_of_coins--;
            this.gameObject.SetActive(false);

            //Goes to next level?
            if (GameManager.Instance.number_of_coins == 0)
            {
                LevelManager.Instance.NextScene();
            }
        }
    }
}
