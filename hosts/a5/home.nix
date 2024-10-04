{ config, pkgs, inputs, pkgs-stable, dotinfo, system, ... }:
let
  username = dotinfo.username;
  mods.local = import ./mods/home;
  mods.common = import ../../mods/home;
in
{
  imports = 
    (with mods.local; [
      packages
      services
    ])
    ++
    (with mods.common; [
      bash
      git
      packages
      tmux
    ]) ++ [ ]
  ;

  

  programs.home-manager.enable = true;
  home.stateVersion = "24.05";
  home.username = username;
  home.homeDirectory = "/home/${username}";
  home.sessionVariables.NIX_PATH = "nixpkgs=${pkgs.path}:stable=${pkgs-stable.path}";
}