{pkgs, pkgs-stable, ...}:

{
  home.packages = 
  (with pkgs;[
    discord
    firefox
    libreoffice-qt
    obsidian
    telegram-desktop
    vlc
    vscode
  ])
  ++ 
  (with pkgs-stable;[

  ]);
}