{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    fastfetch
    hyfetch
    oh-my-posh
    git
    wget
    unzip
    unrar
    fzf
    scrcpy
    #androidsdk
    btop-rocm
  ];
}
