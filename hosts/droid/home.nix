{config, pkgs, pkgs-stable, inputs, dotinfo, system, ...}:
let
  mods.common = import ../../mods/home;
  mods.local = import ./mods;
in
{
  imports = 
    (with mods.common; [
      bash
      git
      packages
      tmux
    ]) ++ 
    (with mods.local; [
      packages
    ]) ++ [ ]
  ;

  # You can update Home Manager without changing this value.
  home.stateVersion = "24.05";

  home.sessionVariables.NIX_PATH = "nixpkgs=${pkgs.path}:stable=${pkgs-stable.path}";
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}