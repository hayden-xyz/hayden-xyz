{ config, pkgs, inputs, ... }:

{
  ## Boot Parameters ##
  boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-bore; #pkgs.linuxPackages_latest;

  ## Limine Config ##
  boot.loader.limine = {
    enable = true;
    package = pkgs.limine-full;
    maxGenerations = 10;
    style = {
      graphicalTerminal = {};
      interface = {};
      wallpapers = [];
    };
  };
}
