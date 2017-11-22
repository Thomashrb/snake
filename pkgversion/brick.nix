{ mkDerivation, base, containers, contravariant, deepseq, dlist
, microlens, microlens-mtl, microlens-th, stdenv, stm
, template-haskell, text, text-zipper, transformers, vector, vty
}:
mkDerivation {
  pname = "brick";
  version = "0.17.2";
  sha256 = "ad154e23b4c38d045c3621de45b876e41eebdde7cae510b733930f0f59ae1c2a";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base containers contravariant deepseq dlist microlens microlens-mtl
    microlens-th stm template-haskell text text-zipper transformers
    vector vty
  ];
  executableHaskellDepends = [
    base microlens microlens-th text text-zipper vector vty
  ];
  homepage = "https://github.com/jtdaugherty/brick/";
  description = "A declarative terminal user interface library";
  license = stdenv.lib.licenses.bsd3;
}
