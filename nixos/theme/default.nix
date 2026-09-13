{ config, pkgs, inputs, ... }:

{
  imports = [
    ./displaymanager.nix
    ./cli.nix
    ./fonts.nix
    ./pkgs.nix
  ];
}
