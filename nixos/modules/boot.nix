{ config, pkgs, inputs, ... }:

{
  ## Boot Parameters ##
  boot.kernelParams = [ "acpi_enforce_resources=lax" ];
  boot.kernelModules = [ "i2c-dev" "i2c-piix4" ];

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
