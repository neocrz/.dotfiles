{pkgs, pkgs-stable, ...}:

{
  home.packages = 
  (with pkgs;[
    calibre
    discord
    figma-linux
    firefox
    libreoffice-qt
    love
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
