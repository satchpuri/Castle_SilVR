using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour {

    [SerializeField] Sprite playHighlighed;
	//play 
    public void Play()
    {
        Debug.Log("Start Pressed");
        SoundManager.Instance.PlaySfxOnce("select", 80);
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        PauseMenu.isPaused = false;
    }

   
    //quit
    public void Quit()
    {
        Debug.Log("Quit");
        Application.Quit();
    }

    public void RestartCurrentScene()
    {
        int scene = SceneManager.GetActiveScene().buildIndex;
        SceneManager.LoadScene(scene, LoadSceneMode.Single);
    }

    public void MainMenuScene()
    {
        SceneManager.LoadScene("Menu");
    }
}
