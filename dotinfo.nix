{
  hosts = {
    a5 = {
      desk-env = "gnome";

      hostname = "a5";
      system = "x86_64-linux";
      username = "eee";
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
    droid = {
      username = "droid";
      system = "aarch64-linux";
      timeZone = "America/Sao_Paulo";
    };
    guest = {
      username = "guest";
      system = "x86_64-linux";
    };
  };
  # for git
  user = {
    name = "neocrz";
    email = "neo59crz@gmail.com";
  };
}