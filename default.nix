{ mkDerivation, base, brick, containers, linear, microlens
, microlens-th, random, stdenv, vty
}:
mkDerivation {
  pname = "snakegame";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base brick containers linear microlens microlens-th random vty
  ];
  license = stdenv.lib.licenses.mit;
}
