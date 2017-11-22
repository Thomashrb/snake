let
 ghc-options = [
    # Enable threading.
    "-threaded" "-rtsopts" "-with-rtsopts=-N"
  ];

  config = {
    packageOverrides = pkgs: rec {
      haskellPackages = pkgs.haskellPackages.override {
        overrides = haskellPackagesNew: haskellPackagesOld: rec {
          snakegame =
            haskellPackagesNew.callPackage ./default.nix { };

          brick =
            haskellPackagesNew.callPackage ./pkgversion/brick.nix { };

          vty =
            haskellPackagesNew.callPackage ./pkgversion/vty.nix { };
        };
      };
    };
  };

  pkgs = import <nixpkgs> { inherit config; };

in
  { snakegame = pkgs.haskellPackages.snakegame;
  }
