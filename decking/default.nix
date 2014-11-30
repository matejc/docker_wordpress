{ decking-nix ? { outPath = ./.; name = "decking-nix"; }
, pkgs ? import <nixpkgs> {}
}:
let
  nodePackages = import "${pkgs.path}/pkgs/top-level/node-packages.nix" {
    inherit pkgs;
    inherit (pkgs) stdenv nodejs fetchurl fetchgit;
    neededNatives = [ pkgs.python ] ++ pkgs.lib.optional pkgs.stdenv.isLinux pkgs.utillinux;
    self = nodePackages;
    generated = ./decking.nix;
  };
in rec {
  tarball = pkgs.runCommand "decking-nix-undefined.tgz" { buildInputs = [ pkgs.nodejs ]; } ''
    mv `HOME=$PWD npm pack ${decking-nix}` $out
  '';
  build = nodePackages.buildNodePackage {
    name = "decking-nix-undefined";
    src = [ tarball ];
    buildInputs = nodePackages.nativeDeps."decking-nix" or [];
    deps = [ nodePackages.by-spec."decking"."~0.2.1" ];
    peerDependencies = [];
    passthru.names = [ "decking-nix" ];
  };
}