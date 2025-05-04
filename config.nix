{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "hiroshi-tools";
      paths = [
        neovim
        nodejs
        clang-tools
        python3
        unzip
        xclip
      ];
    };
  };
}
