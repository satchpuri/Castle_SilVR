using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuManager : Singleton<MenuManager> {


    public void StartButton()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        Debug.Log("Working");

        

    }

    public void Quit()
    {
        Debug.Log("Quit");
        Application.Quit();
    }

    public void Update()
    {

        if (Input.GetKeyDown("space"))
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
            print("space key was pressed");
        }
    }
}
