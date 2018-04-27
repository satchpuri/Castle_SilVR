using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour {

    [SerializeField] Sprite playHighlighed;
	//play 
    public void Play()
    {
        SoundManager.Instance.PlaySfxOnce("select", 100);
        Debug.Log("Start Pressed");
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        PauseMenu.isPaused = false;
    }

   
    //quit
    public void Quit()
    {
        SoundManager.Instance.PlaySfxOnce("select", 100);
        Debug.Log("Quit");
        Application.Quit();
    }

    public void RestartCurrentScene()
    {
        SoundManager.Instance.PlaySfxOnce("select", 100);
        int scene = SceneManager.GetActiveScene().buildIndex;
        SceneManager.LoadScene(scene, LoadSceneMode.Single);
    }

    public void MainMenuScene()
    {
        SoundManager.Instance.PlaySfxOnce("select", 100);
        SceneManager.LoadScene("Menu");
    }
}
