{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-on-droid = {
      url = "github:nix-community/nix-on-droid/release-24.05";
      inputs.home-manager.follows = "home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  
  outputs = { self, nixpkgs, nixpkgs-stable, ... }@inputs: 
  let
    # personal info
    dotinfo = import ./dotinfo.nix;

    # Pkgs helper function
    genPkgs = {n, s, o ? []}: import n {
      system = s;
      config.allowUnfree = true;
      config.allowUnfreePredicate = pkg: true;
      overlays = [  ] ++ o;
    };

    hosts = dotinfo.hosts;
  in
  {
    # A5
    nixosConfigurations.${hosts.a5.hostname} = 
    let
      
      system = hosts.a5.system;
      di = dotinfo // {username = hosts.a5.username;};

      # gen pkgs
      pkgs = genPkgs { n = nixpkgs; s = system; };
      pkgs-stable = genPkgs { n = nixpkgs-stable; s = system; };

    in nixpkgs.lib.nixosSystem {
      specialArgs = {inherit pkgs pkgs-stable inputs system; dotinfo=di;};
      modules = [ ./hosts/a5 inputs.home-manager.nixosModules.home-manager ];
    };
  };
}
