{ config, pkgs, ... }:

{
  imports = [
    ./modules/boot.nix
    ./modules/bluetooth.nix
    ./modules/firewall.nix
    ./modules/git.nix
    ./modules/gnupg.nix
    ./modules/locale.nix
    #./modules/pipewire.nix
    ./modules/services.nix
    ./modules/users.nix
  ];
}
