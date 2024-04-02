{
  description = "samovar's decription";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = inputs @ {
    self,
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      overlays = [];
      pkgs = import nixpkgs {
        inherit system overlays;
        config.allowBroken = true;
      };
    in {
      devShell = pkgs.mkShell.override {stdenv = pkgs.clangStdenv;} {
        packages = with pkgs; [
          spdlog
          cmake
          sqlitecpp
          sqlite
          ftxui

          # Clangd and other stuff for development.
          clang-tools
          llvmPackages_latest.libstdcxxClang
        ];

        shellHook = with pkgs; ''
          export FTXUI_INCLUDE_PATH=${ftxui}/include
        '';
      };
    });
}
