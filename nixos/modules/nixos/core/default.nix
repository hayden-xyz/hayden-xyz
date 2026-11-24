{ config, pkgs, inputs, ... }:

{
  imports = [
    ./boot.nix
    ./defaults.nix
    ./firewall.nix
    ./locale.nix
    ./networking.nix
    ./settings.nix
    ./ssh.nix
    ./users.nix
  ];
}
