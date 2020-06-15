; credit: https://www.reddit.com/r/AutoHotkey/comments/82suso/completed_script_global_hotkeys_for_spotify_v2/?st=jk7bi8fv&sh=097668e0

DetectHiddenWindows On
sendMode Input

title:="ahk_exe Spotify.exe"
path:="C:\Users\gpaul\AppData\Roaming\Spotify\Spotify.exe"     ;Path to Spotify

keyMap:={ "^Numpad4"  :"^{left}"          ; CTRL + Alt + LEFT   Skip to the Previous song.
        , "^Numpad6"  :"^{right}"         ; CTRL + Alt + RIGHT  Skip to the Next song.
        , "^NUmpad8"  :"^{up}"            ; CTRL + Alt + UP     Increase the volume.
        , "^Numpad2"  :"^{down}"          ; CTRL + Alt + DOWN   Decrease the volume.
        , "^Numpad5"  :"{space}"          ; CTRL + Alt + SPACE  Play/Pause the song.
        , "^Numpad9"  :"^R"               ; CTRL + ALT + R      Toggles the repeat option.
        , "^Numpad7"  :"^S"          }    ; CTRL + ALT + B      Toggles the Shuffle option.


Hotkey IfWinExist, % title
for pressedkey,sendkey in keyMap {
    act:=func("sendToSpotify").bind(sendkey)
    Hotkey % pressedkey, % act, On
}
return

sendToSpotify(key){
    WinGet, winList, List, % title
    Loop, % winList {
        ControlFocus , , % "ahk_id " winList%A_Index%
        ControlSend, , % key, % "ahk_id " winList%A_Index%
    }
    return
}

; "CTRL + Alt + S" for Launching spotify / Activating the window / Minimizing the window
;^!S::
;If WinExist(title) {
;    if WinActive (title)
;        WinMinimize
;    else
;        WinActivate
;}
;else
;    run % path
;return