tell application "Google Chrome"
  activate
  tell application "System Events"
    key code 120 using control down # F2 + Ctrl
    delay 0.2
    key code 124 # right arrow
    delay 0.2
    keystroke return
    delay 0.2
    repeat 15 times
      key code 125
      delay 0.2
    end repeat
    key code 126 # up arrow
    delay 0.2
    keystroke return
  end tell
  quit
end tell
