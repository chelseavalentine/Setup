activate application "Visual Studio Code"
tell application "System Events"
  delay 4
  keystroke "p" using {command down, shift down}
  delay 1
  keystroke "install command"
  delay 1
  keystroke return
  delay 3
end tell
