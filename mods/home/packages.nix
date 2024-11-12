{pkgs, pkgs-stable, inputs, ...}:

{
  home.packages = 
  (with pkgs;[
    fastfetch
    ffmpeg
    gh #github
    nix-tree
    peruse
    yt-dlp
    inputs.nixvim.packages.${system}.default
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
