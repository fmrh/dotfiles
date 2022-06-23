#!/bin/sh
pushd ~/.dotfiles
nix build .#homeConfigurations.fmrh.activationPackage
./result/activate
rm -rf result
popd