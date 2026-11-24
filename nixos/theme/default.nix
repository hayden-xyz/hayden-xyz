{ config, pkgs, inputs, ... }:

{
  imports = [
    ./catppuccin.nix
    ./cli.nix
    ./fonts.nix
    ./pkgs.nix
  ];
}
