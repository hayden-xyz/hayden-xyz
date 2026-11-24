{ config, pkgs, inputs, stable, ... }:

{
  # things to get openrgb working on my gigabyte mobo
  hardware.i2c.enable = true;

  services.hardware.openrgb = {
    enable = true;
    motherboard = "amd";
  };

  # boot parameters
  boot = {
    kernelParams = [ "acpi_enforce_resources=lax" ]; # needed for ram rgb
    kernelModules = [ "i2c-dev" "i2c-piix4" ]; # also needed for ram rgb
  };
}
