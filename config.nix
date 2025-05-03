{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "hiroshi-tools";
      paths = [
        neovim
        nodejs
        clang-tools
        python3.12
        python3.12.withPackages (ps: [ ps.venv ])  # adds venv
        unzip
      ];
    };
  };
}
