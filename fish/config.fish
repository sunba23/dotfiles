if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

set fish_greeting

set -g fish_autosuggestion_enabled 1

set -x CHROME_EXECUTABLE /snap/bin/chromium
set -x JAVA_HOME /usr/lib/jvm/java-1.17.0-openjdk-amd64
alias spotify "flatpak run com.spotify.Client -b"

fish_add_path /home/franek/.spicetify
