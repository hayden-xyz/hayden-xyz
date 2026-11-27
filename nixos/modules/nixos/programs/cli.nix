{ config, pkgs, inputs, ... }:

{
  console.keyMap = "de";
  environment.systemPackages = with pkgs; [
    ## system spec fetches ##
    fastfetch
    hyfetch

    ## taskmanagers ##
    btop-rocm

    ## stress testing ##
    memtest_vulkan

    ## ttys ##
    ghostty

    ## cli customization ##
    cava
    pipes-rs
    oh-my-posh

    ## development tools ##
    antigravity-cli
    git

    ## cli tools ##
    wget
    unzip
    unrar
    fzf
    usbutils
    pciutils
    tree

    ## editors ##
    micro-full

    ## android tools ##
    scrcpy

    ## language servers (LSPs) ##
    nixd
  ];
}
