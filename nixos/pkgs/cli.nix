{ config, pkgs, inputs, ... }:

{
  console.keyMap = "de";
  environment.systemPackages = with pkgs; [
    ## system spec fetches ##
    fastfetch
    hyfetch

    ## taskmanagers ##
    btop-rocm

    ## ttys ##
    ghostty

    ## cli customization ##
    cava
    pipes-rs
    oh-my-posh

    ## development tools ##
    git

    ## cli tools ##
    wget
    unzip
    unrar
    fzf
    usbutils
    pciutils

    ## android tools ##
    scrcpy

    ## language servers ##
    nil
  ];
}
