{pkgs ? import <nixpkgs> {}}:




pkgs.mkShell{
    buildInputs =[pkgs.hello]
}

{stdenv }