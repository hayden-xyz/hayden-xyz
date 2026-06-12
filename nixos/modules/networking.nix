{ config, pkgs, ... }:

{
  networking = {
    ## general config ##
    hostName = "nixos";
    ## networkmanager config ##
    networkmanager = {
      enable = true;
    };
  };
}
