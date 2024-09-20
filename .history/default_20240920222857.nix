{pkgs ? import <nixpkgs> {}}:




pkgs.mkShell{
    buildInputs =[pkgs.hello]
}

{stdenv ,fetchFromGithub}:
stdenv.mkDerivation{
    pname ="mypackage";
    version="1.0.0"
    src=fetchFromGithub()
}