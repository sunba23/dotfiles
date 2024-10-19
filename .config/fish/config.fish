if status is-interactive
end

set fish_greeting

set -g fish_autosuggestion_enabled 1

set -x CHROME_EXECUTABLE /snap/bin/chromium
set -x JAVA_HOME /usr/lib/jvm/java-1.17.0-openjdk-amd64
set -x ANDROID_HOME /home/franek/Android/Sdk
set -x ANDROID_SDK_ROOT /home/franek/Android/Sdk
set -x EDITOR nvim
set -x API_SECRETS /home/franek/dev/ZPI/services/service-api/secrets/secrets.ini

fzf_configure_bindings --directory=\cf

zoxide init fish | source

# Created by `pipx` on 2024-10-06 12:13:05
set PATH $PATH /home/franek/.local/bin

function fish_greeting
    set task_count (task count status:pending)

    if test $task_count -gt 0
        set_color blue
        echo "$task_count tasks are pending."
        echo ""
        set_color normal
    end
end
