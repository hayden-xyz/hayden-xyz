{ config, pkgs, inputs, ... }:

{
  ## Kernel ##
  boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-bore;

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
