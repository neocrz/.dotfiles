{pkgs, pkgs-stable, ...}:

{
  home.packages = 
  (with pkgs;[
    calibre
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
