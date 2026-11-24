{ config, pkgs, inputs, stable, ... }:

{
  imports = [
    ./gnome
    ./kde
    ./niri
  ];
}
