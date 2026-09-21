{ config, pkgs, inputs, ... }:

{
  imports = [
    ./modules
    ./pkgs
    ./theme
  ];
}
