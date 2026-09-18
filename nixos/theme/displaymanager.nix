{ config, pkgs, inputs, ... }:

{
  services.displayManager = {
    ly = {
      settings = {
        animate = true;
        animation = "matrix";
        clock = "%c";
        bigclock = true;
        border_fg = "0x006600E3";
        cmatrix_fg = "0x006600E3";
      };
    };
  };
}
