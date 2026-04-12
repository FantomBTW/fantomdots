if status is-interactive
    set -g fish_greeting ""
    set -gx EDITOR nvim
    # Commands to run in interactive sessions can go here
    alias c="clear"
    alias n="nvim"
    alias hx="helix"
    alias C="bash ~/.config/fish/Crun.sh"
end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/fantom/.lmstudio/bin
# End of LM Studio CLI section

set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
