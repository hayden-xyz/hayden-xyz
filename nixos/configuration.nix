{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./default.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;

  ## DONT CHANGE !!! ##
  system.stateVersion = "26.05";

}
