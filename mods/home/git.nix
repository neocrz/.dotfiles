{ config, pkgs, dotinfo, ...}:
let
user = dotinfo.user;
in
{
  programs.git = {
    enable = true;
    lfs.enable = true;

    userName  = user.name;
    userEmail = user.email;
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}