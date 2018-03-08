using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using System.Collections.Generic;

/// <summary>
/// Loads all scenes as levels and stores their data
/// </summary>
public class LevelManager : Singleton<LevelManager>
{
	#region Fields
    //Instance of the manager to check if already loaded
    public static LevelManager Instance;
	#endregion

	#region Properties

	#endregion

	protected LevelManager(){}

	void Awake()
	{
        //Checks whether manager has already been loaded and destroys any copies
        if (Instance)
        {
            DestroyImmediate(gameObject);
        }
        else
        {
            //dont touch me when we load a new scene
            DontDestroyOnLoad(this);
            Instance = this;

            //Load scenes additively so we can switch quicker
            for(int i = 1; i < SceneManager.sceneCountInBuildSettings; i++) //loops through all scenes in build
            {
                //load scene async and additively where i is scene index
                SceneManager.LoadSceneAsync(i, LoadSceneMode.Additive);
            }
        }
            
	}

    /// <summary>
    /// Goes to next scene in order
    /// </summary>
    public void NextScene()
    {
        //get current scene index and up by 1 - using mod t wrap back to 0 at end of scene list
        int nextIndex = SceneManager.GetActiveScene().buildIndex + 1 % SceneManager.sceneCountInBuildSettings;

        //goto that scene
        //Scene scene = SceneManager.LoadSceneAsync(nextIndex);
        SceneManager.SetActiveScene(SceneManager.GetSceneByBuildIndex(nextIndex));
    }

    /// <summary>
    /// goes to specific scene
    /// </summary>
    /// <param name="sceneName">name of scene you want to switch to</param>
    public void GotoScene(string sceneName)
    {
        //chnage scene by scene name
        SceneManager.SetActiveScene(SceneManager.GetSceneByName(sceneName));
    }

    public void ReloadScene()
    {
        //get index of current scene and make that active
        SceneManager.SetActiveScene(SceneManager.GetActiveScene());
    }
}
