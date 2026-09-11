{ config, pkgs, ... }:

{
  networking = {
    ## general config ##
    hostName = "nixos-galaxybook";
    ## networkmanager config ##
    networkmanager = {
      enable = true;
    };
    ## wake on lan ##
    #interfaces.enp10s0.wakeOnLan.enable = true;
    #firewall.allowedUDPPorts = [ 9 ];
  };
}
