{ config, pkgs, inputs, ... }:

{
  imports = [
    ./core
    ./programs
    ./services
  ];
}
