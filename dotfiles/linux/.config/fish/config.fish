set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

oh-my-posh init fish --config ~/.config/fish/catppuccin_macchiato.omp.json | source
hyfetch
