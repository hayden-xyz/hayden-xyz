{ config, pkgs, inputs, ... }:

{
  ## Boot Parameters ##
  boot.kernelPackages =  pkgs.cachyosKernels.linuxPackages-cachyos-bore; #pkgs.linuxPackages_latest;
  ## Limine Config ##
  boot.loader.limine = {
    enable = true;
    package = pkgs.limine-full;
    maxGenerations = null;
    style = {
      graphicalTerminal = {};
      interface = {};
      wallpapers = [];
    };
  };
}
