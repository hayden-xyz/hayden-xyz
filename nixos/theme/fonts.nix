{ config, pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      ## nerd-fonts ##
      nerd-fonts.jetbrains-mono
      nerd-fonts.caskaydia-cove
      ## other fonts ##

    ];
    #fontconfig = {
      #defaultFonts = {
        #serif = [ "Liberation Serif" ];
        #sansSerif = [  ];
      #};
    #};
  };
}
