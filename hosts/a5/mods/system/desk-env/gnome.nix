{ config, pkgs, dotinfo, ... }:
{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  
  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = dotinfo.hosts.a5.layout;
    variant = "";
  };

  environment.systemPackages = [
    pkgs.gnome3.gnome-tweaks
  ];
}