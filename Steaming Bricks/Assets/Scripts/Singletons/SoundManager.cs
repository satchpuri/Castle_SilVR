using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SoundManager : Singleton<SoundManager>
{
    //FIELDS
	private AudioSource sfxSource; //what'll play effects
	private Dictionary<string, AudioClip> sfxLibrary = new Dictionary<string, AudioClip>(); //sound effect library

    private AudioSource musicSource; //source for looping background music
    private Dictionary<string, AudioClip> musicLibrary = new Dictionary<string, AudioClip>(); //music library

    protected SoundManager() {}

	void Awake()
	{
        //dont touch me when we load a new scene
		DontDestroyOnLoad(this);
	}

	void Start()
	{
		//add audio sources to sound manager obj
		sfxSource = gameObject.AddComponent<AudioSource>();
        musicSource = gameObject.AddComponent<AudioSource>();

        Object[] bgm_files = Resources.LoadAll("Audio/BGM", typeof(AudioClip));
        Object[] sfx_files = Resources.LoadAll("Audio/SFX", typeof(AudioClip));

        //add sounds to the lib
        ///musicLibrary.Add("sneaky-guitar-loop", Resources.Load("Audio/sneaky-guitar-loop") as AudioClip);
        //sfxLibrary.Add("BoatMortgage", Resources.Load("sfx/BoatMortage") as AudioClip);

        foreach (var t in bgm_files)
        {
            musicLibrary.Add(t.name, t as AudioClip);
        }

        foreach (var t in sfx_files)
        {
            sfxLibrary.Add(t.name, t as AudioClip);
        }

        //Print audio file names to check
        /*
        foreach (KeyValuePair<string, AudioClip> music in musicLibrary)
        {
            //Now you can access the key and value both separately from this attachStat as:
            Debug.Log(music.Key + " - " + music.Value);
        }

        foreach (KeyValuePair<string, AudioClip> sfx in sfxLibrary)
        {
            //Now you can access the key and value both separately from this attachStat as:
            Debug.Log(sfx.Key + " - " + sfx.Value);
        }
        */

        //Debug.Log(musicLibrary["sneaky-guitar-loop"]);

        //loop background music
        musicSource.loop = true; //turn on looping
        //musicSource.clip = musicLibrary["playful-music"]; //set default song
        //ChangeMusicVolume(0);
        musicSource.Play(); //play music
	}

    /// <summary>
    /// Plays random walk sound once
    /// </summary>
    public void PlayWalkSound()
    {
        
    }

    /// <summary>
    /// Plays sfx once so it doesnt overlap itself
    /// </summary>
    /// <param name="name">Name of sound in dictionary</param>
    /// <param name="volume">Volume of sound</param>
    public void PlaySfxOnce(string name, int volume)
    {
        //PlaySfxAt(name, this.gameObject.transform.position, volume);
        //check if its currently playing
        if (!GameObject.Find("One shot audio"))
        {
            //play sound again
            PlaySfxAt(name, this.gameObject.transform.position ,volume);
        }
    }

    /// <summary>
    /// chnage the background music
    /// </summary>
    /// <param name="name">key of the song to play</param>
    public void ChangeSong(string name)
    {
        musicSource.Stop(); //stop current song

        musicSource.clip = musicLibrary[name]; //set song
        musicSource.Play(); //play song
    }

    /// <summary>
    /// Plays sound at volume
    /// </summary>
    /// <param name="name">key for sound to be played</param>
    /// /// <param name="volume">volume of this sound</param> 
    public void PlaySfx(string name, int volume)
    { 
        //convert volume into percentage
        float vol = (float)(volume / 100.00);

        //scale volume by sourceVolume
        vol *= sfxSource.volume;

        //play sound from lib once
		sfxSource.PlayOneShot(sfxLibrary[name], vol);
	}

    /// <summary>
    /// Plays sound from a specific position in world space by creating its own source
    /// </summary>
    /// <param name="name">key for sound to be played</param>
    /// <param name="position">world cordinates to be played from</param>
    /// <param name="volume">volume of this sound</param> 
    public void PlaySfxAt(string name, Vector3 position, int volume)
    {
        //convert volume into percentage
        float vol = (float)(volume / 100.00);

        //scale volume by sourceVolume
        vol *= sfxSource.volume;

        //doesnt use source bc it creates its own for this
        AudioSource.PlayClipAtPoint(sfxLibrary[name], position, vol);
    }

    /// <summary>
    /// changes sfx volume
    /// </summary>
    /// <param name="volume">number 0-100 of volume</param>
    public void ChangeSfxVolume(int volume)
    {
        //chnage volume into a float for the actual volume- and set to sfxVolume
        sfxSource.volume = (float)(volume / 100.00);
    }

    /// <summary>
    /// changes music volume
    /// </summary>
    /// <param name="volume">number 0-100 of volume</param>
    public void ChangeMusicVolume(int volume)
    {
        //chnage volume into a float for the actual volume- and set to sfxVolume
        musicSource.volume = (float)(volume / 100.00);
    }
}
