{ pkgs }:

pkgs.stdenv.mkDerivation (old: {

  name = "opencascade";
  dontUnpack = true;

  installPhase = ''
    mkdir -p $out/include
    cp -a ${pkgs.opencascade-occt}/include/opencascade/* $out/include/
  '';

})
