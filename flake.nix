{
description = "Haskell binding to [opencascade](https://dev.opencascade.org) library";

inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs";
    haskell-flake-utils.url = "github:ivanovs-4/haskell-flake-utils";

};

outputs = { self, nixpkgs, haskell-flake-utils, ... }@inputs:
  let

    packageNames = [
      "hocct"
      "hocct-Foundation"
      "hocct-ModelingAlgorithms"
      "hocct-ModelingData"
    ];

    packageDirs = {};

  in

  haskell-flake-utils.lib.simpleCabalProject2flake {
    inherit self nixpkgs;
    systems = [ "x86_64-linux" "aarch64-linux" ];
    name = "hocct";

    inherit packageNames;

    hpOverrides = { pkgs }: new: old:
      let
        opencascade-hxx = import ./nix/opencascade-hxx.nix { inherit pkgs; };
      in (
        with pkgs.lib.attrsets;
        genAttrs packageNames (name: pkgs.haskell.lib.overrideCabal
          (old.callCabal2nixWithOptions name self ("--subpath ${ attrByPath [name] name packageDirs }")
            (attrByPath [name] {} {})
          )
          {
            librarySystemDepends = with pkgs; [
              opencascade-hxx
              opencascade-occt
            ];
          }
        )
      );

  };

}
