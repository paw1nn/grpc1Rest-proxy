{ pkgs ? import <nixpkgs> {}}:
pkgs.mkShell{
    buildinputs =[pkgs.hello]
}