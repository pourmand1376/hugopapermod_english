---
title: How to Record Google Meet Session With OBS Studio
date: 2024-05-19
tags:
  - tips
  - software
  - technology
---
Some days ago, I wanted to record a Google Meet session as a podcast and I didn't want to pay for just recording the call, neither to google nor third party services. 

## Update 2024-11-02
Previously, I used the browser method to record the screen since I heard my voice twice in the recording. This way, the issue is fixed. 

But, There are other solutions! The better solution would be to just record the screen normally. These would be the sources.  One would capture your audio, and the other would capture your screen and their audio. 

![](Set_Sources_new_method.webp#center)

But Note that you should use separate microphone and speaker which Do NOT hear each other. Otherwise, you would have hear voices twice. This can be your audio mixer settings. 

![](Audio_Mixer_settings.webp#center)
![](audio_mixer_advanced.webp#center)
I would also like to record other tracks so that I would have separate channels for each person. This is why I choose the first track to be combined, but use the second and third track to have separate voices. 

> Note That if you want to record audio tracks separately, you should also check the second and third track in Settings -> Output -> Recording -> Audio Tracks. 

Also, Do not forget to resize the Screen Capture to resize the canvas like this:
![](resize_output_screen_capture.webp#center)

## Previous Post Content 

Here's how you can do it step by step. 

First, install OBS Studio (which is available on all OSes) and open it up. 

Before recording anything, you should set your Base Canvas Resolution. Otherwise, you may end up with odd resolutions which are hard to edit. I am using Macbook and the default resolution is not well suited for youtube (You can optionally set FPS to 30). 

To open up this window, go to settings menu:

![](FrameSetting.webp)

Then click on + Icon to create a new scene. Let's call it `GoogleMeetRecorder`. 

![](AddNewScene.webp#center)

After creating a scene, you can add some `Sources` to the scene.![](AddBrowser.webp#center)

![](GoogleMeetBrowser.webp)Now A Window should appear which asks you how to configure the browser in OBS. Here are some notes you should pay attention to:
- Set the URL to the meeting url that you want to record
- Set appropriate width and height (I suggest 1920 by 1080)
- Be Careful to check `Control Audio via OBS`, otherwise, you would have echo and you will hear your voice multiple times.

![](BrowserConfig.webp#center)

Then you have to fit the source to the scene. Here's how to do it:
![](FitToScene.webp)

You should now see a window pretty much like this. Make sure to hit `Interact`. Then a window would pop up. That's pretty much your browser and you can enter your name (something like Recorder) and ask to join the meeting. 

![](Interact.webp)

Once, you are accepted as a guest make sure you minimize yourself so that only people in the meeting are shown. 

![](minimize.webp)
You are pretty much done. Make sure your Audio Mixer Setting is set like me and you are done. 

The reason for this setting is that the voice should be only recorder through OBS internal Browser. Here, If you don't disable your Microphone, you would also hear your voice twice in the recording (with some lag because of the internet). You don't want that. Right?

![](audioMixer.webp)

Now, you can `Start Recording`. Also, Don't forget to mute all your notifications. 

I hope this is an easy to do tutorial for you. 