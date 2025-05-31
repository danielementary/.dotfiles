if application "Safari" is running then
    tell application "Safari"
        make new document at end of documents
        activate
    end tell
else
    tell application "Safari" to activate
end if
