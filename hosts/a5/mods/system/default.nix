{
  db = import ./db.nix;
  firewall = import ./firewall.nix;
  games = import ./games.nix;
  hybrid = import ./hybrid.nix;
  services = import ./services.nix;
  virtualisation = import ./virtualisation.nix;
}