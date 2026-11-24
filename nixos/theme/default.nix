{ config, pkgs, inputs, ... }:

{
  imports = [
    #./displaymanager.nix
    ./catppuccin.nix
    ./cli.nix
    ./fonts.nix
    ./pkgs.nix
  ];
}
