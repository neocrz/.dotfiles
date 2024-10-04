{pkgs, pkgs-stable, ...}:

{
  home.packages =
  (with pkgs; [
    openssh
  ]) ++ (with pkgs-stable; [

  ]) ++ [ ];
}