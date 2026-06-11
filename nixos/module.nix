{ config, pkgs, ... }:

{
  imports = [
    ./modules/boot.nix
    ./modules/bluetooth.nix
    ./modules/firewall.nix
    ./modules/locale.nix
    ./modules/pipewire.nix
    ./modules/services.nix
    ./modules/users.nix
  ];
}
