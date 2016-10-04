#!/usr/bin/env bash

getDotfilesInThisRepo() {
    ls -lrt -d -1 "$PWD"/dotfiles/{*,.*} | grep -E [^\.]$
}

createSymlinks() {
    echo "Creating symlinks"
    ln -s $* ~
    echo "Done"
}

echo "=== Dotfiles ==="
getDotfilesInThisRepo
echo "================"
read -p "Create a symlink to each of these files in ~? [y/n]:" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    createSymlinks $(getDotfilesInThisRepo)
else
    echo "Cancelled."
fi
