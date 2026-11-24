{ config, pkgs, inputs, ... }:

{
  imports = [
    ./apps.nix
    ./cli.nix
    ./discord.nix
    ./gaming.nix
    ./steam.nix
    #./utils.nix
  ];
}
