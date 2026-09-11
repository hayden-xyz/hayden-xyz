{ config, pkgs, inputs, ... }:

{
  programs = {
    fish = {
      interactiveShellInit = ''
        set -g fish_greeting
        oh-my-posh init fish --config ~/.config/fish/catppuccin_macchiato.omp.json | source
      '';
    };
  };
}
