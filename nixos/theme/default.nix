{ config, pkgs, inputs, ... }:

{
  imports = [
    ./cli.nix
    ./fonts.nix
    ./pkgs.nix
  ];
}
