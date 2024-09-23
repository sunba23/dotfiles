function ls --wraps='eza --color=always --icons=always --git --no-filesize --no-time --no-user' --wraps='eza --color=always --icons=always --git --no-filesize --no-time --no-user --long' --wraps='eza --color=always --icons=always --git --no-filesize --no-user --long' --description 'alias ls=eza --color=always --icons=always --git --no-filesize --no-time --no-user'
  eza --color=always --icons=always --git --no-filesize --no-time --no-user $argv
        
end
