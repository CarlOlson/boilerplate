{ pkgs ? (import <nixpkgs> {}), haxe ? (import ./haxe.nix {}) }:

let
  inherit (pkgs) stdenv neko;
in
stdenv.mkDerivation {
  name = "haxe-project";

  buildInputs = [haxe neko];

  shellHook = ''
    mkdir -p haxelib
    export HAXE_STD_PATH=${haxe}/lib/haxe/std
    export HAXELIB_PATH=`pwd`/haxelib
    export NEKOPATH=${neko}/lib/neko
  '';
}
