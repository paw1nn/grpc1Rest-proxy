{pkgs ? import <nixpkgs> {}}:




pkgs.mkShell{
    buildInputs =[pkgs.hello]
}

{stdenv ,fetchFromGithub}:
stdenv.mkDerivation{
    pname ="mypackage";
    version="1.0.0"
    src=fetchFromGithub {owner = "my-user"; repo = "my-repo"; rev = "v${version}"; sha256 = "hash";}
}
{ pkgs ? import <nixpkgs> {}}:
pkgs.mkShe