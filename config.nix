{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "hiroshi-tools";
      paths = [
        neovim
      ];
    };
  };
}
