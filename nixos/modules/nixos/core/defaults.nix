{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;

  ## DONT CHANGE !!! ##
  system.stateVersion = "26.05";

}
