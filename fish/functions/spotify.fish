function spotify --wraps='flatpak run com.spotify.Client -b' --description 'alias spotify flatpak run com.spotify.Client -b'
  flatpak run com.spotify.Client -b $argv
        
end
