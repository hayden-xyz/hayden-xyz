{ config, pkgs, inputs, stable, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./amdgpu.nix
  ];
}
