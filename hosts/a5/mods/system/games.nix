{config, pkgs, pkgs-stable, dotinfo, ...}:
let
  username = dotinfo.username;
in
{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    gamescopeSession.enable = true;
  };
  # home-manager level
  home-manager.users.${username} = {
    home.packages = (with pkgs; [
      (retroarch.override {
        cores = with libretro; [
        genesis-plus-gx
        snes9x
        beetle-psx-hw
        ];
      })
    ]) ++ (with pkgs-stable; []) ++[ ];
  };
}