{config, pkgs, pkgs-stable, ...}:

{
  nix.settings = {
    substituters = [
      "https://cuda-maintainers.cachix.org"
    ];
    trusted-public-keys = [
      "cuda-maintainers.cachix.org-1:0dq3bujKpuEPMCX6U4WylrUDZ9JyUG0VpVZa7CNfq5E="
    ];
    trusted-users = [
      "root"
      "@wheel"
    ];
    trusted-substituters = [ "https://cuda-maintainers.cachix.org" "https://hydra.nixos.org/" ];
  };
}
