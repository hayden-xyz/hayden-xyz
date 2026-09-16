{ config, pkgs, ... }:

{
  ## Services.hardware ##
  services.hardware = {};
  ## services.xserver ##
  services.xserver = {
    enable = false;
    xkb.layout = "de";
    xkb.variant = "";
  };
  ## services.printing (CUPS) ##
  services.printing = {
    enable = true;
  };
}
