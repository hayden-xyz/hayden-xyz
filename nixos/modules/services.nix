{ config, pkgs, ... }:

{
  ## Services
  services = {
    hardware = {
      openrgb = {
        enable = true;
        motherboard = "amd";
      };
    };
  };
}
