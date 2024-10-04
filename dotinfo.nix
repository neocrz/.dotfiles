{
  hosts = {
    a5 = {
      hostname = "a5";
      system = "x86_64-linux";
      username="eee";

      model = "Acer aspire 5";
      hybrid = "true";
      busId = {
        intel = "PCI:0:2:0";
        nvidia = "PCI:2:0:0";
      };

      timeZone = "America/Sao_Paulo";
      defaultLocale = "en_US.UTF-8";
      extraLocale = "pt_BR.UTF-8";
      keyMap = "br-abnt2";
      layout = "br";
    };
    nix-on-droid = {
      username = "droid";
      system = "aarch64-linux";
    };
  };
  # for git
  user = {
    name = "neocrz";
    email = "neo59crz@gmail.com";
  };
}