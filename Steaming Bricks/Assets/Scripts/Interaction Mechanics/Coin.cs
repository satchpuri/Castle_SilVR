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
            SoundManager.Instance.PlaySfxOnce("bell-ding", 100);
            //Stretch - Add longer ding for unlocking door

            GameManager.Instance.coins_remaining--;
            GameManager.Instance.coins_collected++;
			indicator.gameObject.GetComponent<GemIndicator> ().GemCollected();
            this.gameObject.SetActive(false);            
        }
    }
}
