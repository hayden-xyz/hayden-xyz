{ config, pkgs, inputs, stable, ... }:

{
  services = {
    lact.enable = true;
  };
  hardware.amdgpu = {
    opencl.enable = true;
    overdrive.enable = true;
  };
}
