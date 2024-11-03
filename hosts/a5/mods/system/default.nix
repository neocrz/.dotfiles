{
  db = import ./db.nix;
  desk-env = import ./desk-env;
  firewall = import ./firewall.nix;
  games = import ./games.nix;
  ibus = import ./ibus.nix;
  hybrid = import ./hybrid.nix;
  nix-mod = import ./nix.nix;
  services = import ./services.nix;
  virtualisation = import ./virtualisation.nix;
}