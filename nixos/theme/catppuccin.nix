{ config, pkgs, inputs, ... }:

{
  catppuccin = {
    ## global options ##
    accent = "mauve";
    flavor = "macchiato";
    enable = true;
    autoEnable = false;
    cache.enable = true;
  };
}
