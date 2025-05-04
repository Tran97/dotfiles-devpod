{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "hiroshi-tools";
      paths = [
        neovim
        nodejs
       # clang-tools
        (clang-tools.override { llvmPackages = llvmPackages_16; })  # Use clangd 16.x
        python3
        unzip
      ];
    };
  };
}
