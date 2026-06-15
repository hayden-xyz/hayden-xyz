{ config, pkgs, ... }:

{
  ## user account config ##
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
  users.users."hayden" = {
    isNormalUser = true;
    description = "hayden";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
