{ config, pkgs, ... }:

{
  ## Services.hardware ##
  services.hardware = {
    ## openrgb ##
    #openrgb = {
      #enable = true;
      #motherboard = "amd";
    #};
  };
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
  services = {
    v4l2-relayd = {
      instances.ipu6.input = { width = 1920; height = 1080; };
    };
  };
}
