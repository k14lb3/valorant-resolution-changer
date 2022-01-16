# Valorant Resolution Changer

Adapted from CSGO Stretched Launcher:
https://www.reddit.com/r/GlobalOffensive/comments/2o51wv/multiple_monitors_and_43_stretched_resolution/

A program for people using multiple monitors that want to use a lower resolution in Valorant but doing so minimizes the game when you click on the other monitor. 

Follow these steps to run Valorant using your desired resolution:

* Change your Valorant ingame settings (Video -> General -> Display Mode: Windowed Fullscreen).  
  Note: You can do this either before or after launching Valorant.

* Open "valorant_rc.bat" via right click then edit.

  * Edit the parameters in line 2 so that it fits your desired resolution (e.g. "QRes.exe /X 1280 /Y 960").

  * Set the /R parameter to your monitors refresh rate (e.g. "QRes.exe /X 1280 /Y 960 /R 144").

  * Edit the parameters in line 10 to your monitors native resolution (e.g. "QRes.exe /X 1920 /Y 1080").

  * Further information about the parameters:
    ```
    QRes.exe [/X[px]] [/Y[px]] [/C[bits] [/R[rr]] [/S] [/L] [/D] [/V] [/?] [/H]

      /X    Width in pixels.
      /Y    Height in pixels.
      /C    Colour depth.
              4  = 16 colours.
              8  = 256 colours.
              16 = High colour.
              24 = True colour.
              32 = True colour.
      /R    Refresh rate.
      /S    Show current display settings.
      /L    List all display modes.
      /D    Does NOT save display settings in the registry..
      /V    Does NOT display version information.
      /?    Displays usage information.
      /H    Displays more help.
      ```
      Example: "QRes.exe /X 1280 /Y 960 /C 32 /R 144" Changes resolution to 1280 x 960 with "True Colour" Colour depth and a refresh rate of 144 Hz.

* Launch Valorant by opening the "valorant_rc_hide.bat" file via right-click then open.

The idea is that when the game is in windowed fullscreen mode, you'll be able to click on the other monitors as the display mode is actually a borderless window using the current resolution of the main monitor. With that in mind, we can do a workaround using that fact. The program changes the resolution of the main monitor from the given parameters. It will then launch Valorant and waits until you close the game. After closing the game, the program will then change the resolution again from the given parameters.

Credits to the creator of the QRes Tool!

QRes v1.1  
Copyright: Berend Engelbrecht  
http://qres.sourceforge.net/

(⌐■_■)