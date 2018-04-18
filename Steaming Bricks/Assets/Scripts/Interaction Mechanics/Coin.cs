using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Coin : MonoBehaviour
{
    // Use this for initialization
    void OnEnabled()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        GameManager.Instance.coins_remaining = GameManager.Instance.coins_remaining + 1;
    }

    void OnDisabled()
    {
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

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
