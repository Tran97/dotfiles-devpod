{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "hiroshi-tools";
      paths = [
        neovim
        nodejs
       # clang-tools
        llvmPackages_16.clang-tools  # Directly use clangd from LLVM 16
        python3
        unzip
      ];
    };
  };
}
