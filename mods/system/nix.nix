{config, pkgs, pkgs-stable, ...}:

{
  nix = {

    nixPath = [ "nixpkgs=${pkgs.path}" "stable=${pkgs-stable.path}" ];

    settings = {

      substituters = [];
      trusted-public-keys = [];
      experimental-features = ["nix-command" "flakes"];

    };

    gc = {

      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 2d";

    };

    package = pkgs.nixFlakes;

  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    # Add any missing dynamic libraries for unpackaged programs
    stdenv.cc.cc.lib
  ];

}