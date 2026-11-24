{ config, pkgs, inputs, ... }:

{
  imports = [
    ./apps.nix
    ./cli.nix
    ./discord.nix
    ./gaming.nix
    ./git.nix
    ./gnupg.nix
    ./steam.nix
  ];
}
