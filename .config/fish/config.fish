if status is-interactive
   set -g fish_greeting ""
   set -gx EDITOR nvim
    # Commands to run in interactive sessions can go here
    alias c="clear"
    alias n="nvim"
    alias C="bash ~/.config/fish/Crun.sh"
    alias ssh="kitty +kitten ssh"
end
