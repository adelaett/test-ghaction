{
  inputs = {
    flake-utils.url = github:numtide/flake-utils;
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
  };

  outputs = {nixpkgs, flake-utils, ...}:
    let
      systems = [ "x86_64-linux" ];
    in flake-utils.lib.eachSystem systems (system:
      let
        pkgs = import nixpkgs { inherit system; };
        coqPackages = pkgs.callPackage ./nix/packages.nix {};
        python3 = pkgs.python3;
      in
      rec {
        packages = {
          test-ghaction = coqPackages.test-ghaction;
        };
        defaultPackage = packages.test-ghaction;
        devShell = pkgs.mkShell {
          inputsFrom = [ packages.test-ghaction ];
          buildInputs = [
            coqPackages.serapi
            pkgs.ocamlPackages.dune_2
            pkgs.ocaml
            python3.pkgs.alectryon
          ];
        };
      }
    );
}
