{ config, pkgs, inputs, ... }:

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
  users.users."Guest" = {
    isNormalUser = true;
    description = "guestuser";
    extraGroups = [ "networkmanager" ];
    password = "";
  };
}
