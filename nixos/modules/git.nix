{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    package = pkgs.git;
  };
  environment.systemPackages = with pkgs; [
    git-credential-oauth
    git-credential-manager
  ];
}
