{ config, pkgs, inputs, ... }:

{
  imports = [
    ./audio.nix
    ./boot.nix
    ./bluetooth.nix
    ./firewall.nix
    ./git.nix
    ./gnupg.nix
    ./hardware.nix
    ./locale.nix
    ./networking.nix
    ./settings.nix
    ./services.nix
    ./users.nix
  ];
}
