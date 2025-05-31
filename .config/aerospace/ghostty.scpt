if application "Ghostty" is running then
    tell application "System Events"
        tell process "Ghostty"
            click menu item "New Window" of menu "File" of menu bar 1
        end tell
    end tell
else
    tell application "Ghostty" to activate
end if
