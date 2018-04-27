using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Coin : MonoBehaviour
{
	GameObject indicator;

    // Use this for initialization
    void OnEnabled()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

	void Start() {
		indicator = GameObject.Find ("CoinIndicators");
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
            GameManager.Instance.coins_collected++;
			indicator.gameObject.GetComponent<GemIndicator> ().GemCollected();
            this.gameObject.SetActive(false);

            //Goes to next level?
            if (GameManager.Instance.coins_remaining == 0)
            {
                LevelManager.Instance.NextScene();
            }
        }
    }
}
