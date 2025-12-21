slurp | while read -r area; do grim -g "$area" "$HOME/media/screenshots/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png" && grim -g "$area" - | wl-copy; done

