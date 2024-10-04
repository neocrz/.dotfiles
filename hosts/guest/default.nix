{config, pkgs, pkgs-stable, inputs, dotinfo, system, ...}:
let
  username=dotinfo.username;
in 
{
  home.username = username;
  home.homeDirectory = "/home/${username}";
  home.stateVersion = "24.05"; 

  home.packages = [ ];

  home.sessionVariables = { };

  programs.home-manager.enable = true;
  home.sessionVariables.NIX_PATH = "nixpkgs=${pkgs.path}:stable=${pkgs-stable.path}";
}
