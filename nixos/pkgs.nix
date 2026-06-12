{ config, pkgs, ... }:

{
  imports = [
    ./pkgs/apps.nix
    ./pkgs/cli.nix
    ./pkgs/gaming.nix
    ./pkgs/kde.nix
    #./pkgs/steam.nix
    ./pkgs/utils.nix
  ];
}
