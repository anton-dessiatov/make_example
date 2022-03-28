let nixpkgs = import ./nixpkgs.nix;
    pkgs = import nixpkgs {
      overlays = [
        (self: super: {
          make-example = super.callPackage ./derivation.nix {};
        })
      ];
    };
in  pkgs.make-example
