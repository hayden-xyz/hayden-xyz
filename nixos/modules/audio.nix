{ config, pkgs, ... }:

{
  ## Enable sound with pulseaudio ##
  services.pulseaudio.enable = false;
  ## Enable sound with pipewire ##
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    ## If you want to use JACK applications ##
    #jack.enable = true;
  };
}
