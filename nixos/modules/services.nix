{ config, pkgs, ... }:

{
  ## Services.hardware ##
  services.hardware = {
    ## openrgb ##
    openrgb = {
      enable = true;
      motherboard = "amd";
    };
  };
  ## Services.lact ##
  services.lact = {
    package = pkgs.lact;
    enable = true;
  };
  ## services.xserver ##
  services.xserver = {
    enable = false;
  };
  ## services.printing (CUPS) ##
  services.printing = {
    enable = true;
  };
}
