{ config, pkgs, inputs, ... }:

{
  imports = [
    ./modules/default.nix
    ./pkgs/default.nix
    ./theme/default.nix
  ];
}
