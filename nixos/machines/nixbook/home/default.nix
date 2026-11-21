{ config, pkgs, inputs, ... }:

{
  imports = [
    #./apps.nix
    ./catppuccin.nix
    ./home.nix
    ./programs.nix
  ];
}
