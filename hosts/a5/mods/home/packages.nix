{pkgs, pkgs-stable, ...}:

{
  home.packages = 
  (with pkgs;[
    audacity
    calibre
    discord
    figma-linux
    firefox
    libreoffice-qt
    love
    mpv
    obs-studio
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
