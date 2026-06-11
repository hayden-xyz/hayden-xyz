{ config, pkgs, ... }:

{
  ## user account config ##
  users.defaultUserShell = pkgs.fish;
  users.users."hayden" = {
    isNormalUser = true;
    description = "hayden";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
