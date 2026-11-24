{ config, lib, pkgs, inputs, stable, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./hardware.nix
    ./amdgpu.nix
  ];

  networking.hostName = "nixos";

  services.displayManager = {
    ly.enable = lib.mkDefault false;
    plasma-login-manager.enable = lib.mkDefault true;
  };
}
