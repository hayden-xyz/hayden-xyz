{ config, pkgs, ... }:

{
  networking.firewall.allowedTCPPortRanges = [
  ## KDE Connect ##
  { from = 1714; to = 1764; }
  ];
  networking.firewall.allowedUDPPortRanges = [
  ## KDE Connect ##
  { from = 1714; to = 1764; }
  ];
}
