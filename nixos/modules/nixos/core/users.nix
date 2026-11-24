{ config, pkgs, inputs, ... }:

{
  ## user account config ##
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
  users.users.hayden = {
    isNormalUser = true;
    description = "Hayden";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
  users.users.guest = {
    isNormalUser = true;
    description = "Guest";
    extraGroups = [ "networkmanager" ];
    hashedPassword = "";
  };
  security.pam.services = {
    login.allowNullPassword = true;
    gdm-password.allowNullPassword = true;
  };
}
