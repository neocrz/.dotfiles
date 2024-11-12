{pkgs, pkgs-stable, ...}:

{
  home.packages = 
  (with pkgs;[
    fastfetch
    ffmpeg
    gh #github
    nix-tree
    peruse
    yt-dlp
  ])
  ++ 
  (with pkgs-stable;[

  ]);

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };
  programs.zoxide = {
    enable = true;
    enableBashIntegration= true;
  };
}