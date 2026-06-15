{ config, pkgs, inputs, ... }:

{
  imports = [
    #./desktop.nix
    ./fonts.nix
    ./pkgs.nix
  ];
}
