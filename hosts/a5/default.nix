{pkgs, pkgs-stable, inputs, dotinfo, system, ...}:

let  
  lib = pkgs.lib;
in
{
 
  imports = [
    inputs.home-manager.nixosModules.home-manager
    ./configuration.nix
  ];

  home-manager = {
    extraSpecialArgs = {inherit inputs pkgs pkgs-stable dotinfo system;};
    useGlobalPkgs = false;
    useUserPackages = true;
    users.${dotinfo.username} = import ./home.nix;
  };

}