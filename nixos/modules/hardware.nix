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
  programs = {
    auto-cpufreq = {
      enable = true;
      settings = {
        charger = {
          governor = "performance";
          turbo = "auto";
        };
        battery = {
          governor = "balance_performance";
          turbo = "auto";
        };
      };
    };
  };
}
