{ mkDerivation, base, containers, contravariant, deepseq, dlist
, microlens, microlens-mtl, microlens-th, stdenv, stm
, template-haskell, text, text-zipper, transformers, vector, vty
}:
mkDerivation {
  pname = "brick";
  version = "0.17";
  sha256 = "891cb3323b1de2ed27849399cf8ab1ed1467560813a6182edb53b3726e4b3b68";
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
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
