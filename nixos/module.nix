{ config, pkgs, ... }:

{
  imports = [
    ./modules/audio.nix
    ./modules/boot.nix
    ./modules/bluetooth.nix
    ./modules/firewall.nix
    ./modules/git.nix
    ./modules/gnupg.nix
    ./modules/locale.nix
    ./modules/networking.nix
    ./modules/services.nix
    ./modules/users.nix
  ];
}
