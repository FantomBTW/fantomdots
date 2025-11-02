if status is-interactive
   set -g fish_greeting ""
   set -gx EDITOR nvim
   alias n="nvim"
   alias c="clear"
    # Commands to run in interactive sessions can go here
end