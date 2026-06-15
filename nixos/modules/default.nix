{ config, pkgs, inputs, ... }:

{
  imports = [
    ./audio.nix
    ./boot.nix
    ./bluetooth.nix
    ./firewall.nix
    ./git.nix
    ./gnupg.nix
    ./locale.nix
    ./networking.nix
    ./services.nix
    ./users.nix
  ];
}
