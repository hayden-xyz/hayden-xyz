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
        border_fg = "0x005D137A";
        cmatrix_fg = "0x005D137A";
      };
    };
    plasma-login-manager = {
      enable = true;
    };
  };
}
