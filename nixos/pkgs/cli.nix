{ config, pkgs, inputs, ... }:

{
  console.keyMap = "de";
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
    btop-rocm
  ];
}
