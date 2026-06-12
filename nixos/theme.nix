{ config, pkgs, ... }:

{
  imports = [
    ./theme/desktop.nix
    ./theme/fonts.nix
  ];
}
