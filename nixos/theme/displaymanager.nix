{ config, pkgs, inputs, ... }:

{
  services.displayManager = {
    ly = {
      enable = false;
      settings = {
        animate = true;
        animation = "matrix";
        clock = "%c";
        bigclock = true;
        border_fg = "0x006600E3";
        cmatrix_fg = "0x006600E3";
      };
    };
    plasma-login-manager = {
      enable = true;
    };
  };
}
