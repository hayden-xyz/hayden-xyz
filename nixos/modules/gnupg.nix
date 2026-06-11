{ config, pkgs, ... }:

{
  programs.gnupg = {
    package = pkgs.gnupg;
    agent.enable = true;
  };
}
