{config, dotinfo, ...}:

{
  programs.adb.enable = true;
  users.users.${dotinfo.username}.extraGroups = [ "adbusers" "plugdev" ];
}