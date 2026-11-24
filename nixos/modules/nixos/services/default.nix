{ config, pkgs, inputs, ... }:

{
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./display-manager.nix
    ./general.nix
    ./smb.nix
  ];
}
