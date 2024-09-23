if status is-interactive
end

set fish_greeting

set -g fish_autosuggestion_enabled 1

set -x CHROME_EXECUTABLE /snap/bin/chromium
set -x JAVA_HOME /usr/lib/jvm/java-1.17.0-openjdk-amd64
set -x ANDROID_HOME /home/franek/Android/Sdk
set -x ANDROID_SDK_ROOT /home/franek/Android/Sdk
set -x EDITOR nvim

fzf_configure_bindings --directory=\cf

zoxide init fish | source
