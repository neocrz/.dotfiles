{config, pkgs, ...}:

{
  programs.tmux = {
    enable = true;
    # extraConfig = builtins.readFile ./tmux.conf;

    plugins = with pkgs.tmuxPlugins; [
      catppuccin
    ];
  };
}