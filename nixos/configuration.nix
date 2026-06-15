{ config, pkgs, ... }:

{
  imports = [
    ## Include the results of the hardware scan ##
    ./hardware-configuration.nix
    ./default.nix
  ];

  ## Flakes ##
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  ## Hardware ##
  hardware.i2c.enable = true;

  ## Use latest kernel ##
  #boot.kernelPackages = pkgs.linuxPackages_latest;

  # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  ## Enable networking ##

  ## Enable the X11 windowing system ##

  ## Enable the KDE Plasma Desktop Environment ##
  services.displayManager.plasma-login-manager.enable = true;
  services.desktopManager.plasma6.enable = true;

  ## Configure keymap in X11 ##
  services.xserver.xkb = {
    layout = "de";
    variant = "";
  };

  ## Configure console keymap ##
  console.keyMap = "de";

  ## Enable printing support via CUPS ##
  services.printing.enable = true;

  ## Enable sound with pipewire ##

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  ## programs.*.enable ##
  programs = {
    firefox.enable = true;
    fish.enable = true;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; with kdePackages; with rocmPackages; [

    ## KDE Packages ##
    #kdeconnect-kde
    #kate

    ## Shell Packages ##
    #fastfetch
    #hyfetch
    #oh-my-posh

    ## Browsers ##
    #brave

    ## Social ##
    #signal-desktop
    #discord
    #equicord

    ## Gaming related Packages ##
    #prismlauncher

    ## Required Packages ##
    #git
    #wget
    #unzip
    rocm-smi

    ## Useful Packages ##
    #deja-dup
    #btop-rocm

    ## System Customization ##
    #openrgb-with-all-plugins
    #papirus-icon-theme
    #catppuccin-papirus-folders

  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];

  ## Fonts ##

  ## Removes some KDE Apps ##

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.

  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "26.05"; # Did you read the comment?

}
