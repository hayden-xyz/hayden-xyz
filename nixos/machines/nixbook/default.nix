{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.auto-cpufreq.nixosModules.default
    "${inputs.galaxybook-fixes}/nixos/speaker-fix-940xfg.nix" # galaxy book 3 pro speaker fix
    "${inputs.galaxybook-fixes}/nixos/ov02c10-26mhz-fix.nix" # trying to get the camera to work ( mf still doesnt fucking work >:/ )
    ./hardware-configuration.nix
  ];

  hardware = {
    samsungGalaxyBook = {
      speakerFix940xfg.enable = true; # enable the speaker fix
      ov02c10ClockFix.enable = true;
    };
  };

  networking.hostName = "nixbook";
}
