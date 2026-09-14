{ config, pkgs, inputs, ... }:

{
  hardware = {
    i2c = {
      enable = false;
    };
    ipu6 = {
      enable = true;
      platform = "ipu6ep";
    };
  };
}
