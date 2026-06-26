{ config, pkgs, ... }:

{
  networking = {
    ## general config ##
    hostName = "nixos";
    ## networkmanager config ##
    networkmanager = {
      enable = true;
    };
    ## wake on lan ##
    interfaces.enp10s0.wakeOnLan.enable = true;
    firewall.allowedUDPPorts = [ 9 ];
  };
}
