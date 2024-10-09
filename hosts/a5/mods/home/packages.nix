{pkgs, pkgs-stable, ...}:

{
  home.packages = 
  (with pkgs;[
    discord
    firefox
    libreoffice-qt
    mpv
    obsidian
    qbittorrent
    scrcpy
    telegram-desktop
    vlc
    vscode
  ])
  ++ 
  (with pkgs-stable;[

  ]);
}
