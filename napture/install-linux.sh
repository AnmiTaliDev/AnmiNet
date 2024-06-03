#!/usr/bin/env bash

echo "Building Napture..."

./scripts/deps-install.sh

status=$(git status)

# Check if the status contains the phrase "Your branch is behind"
if [[ $status == *"Your branch is behind"* ]]; then
    echo "Your branch is behind the remote repository."
    echo "Pulling the latest changes..."
    git pull origin $(git rev-parse --abbrev-ref HEAD)
elif [[ $status == *"Your branch is up to date"* ]]; then
    echo "Your branch is up to date with the remote repository."
else
    echo "Failed to determine the repository status."
fi


# Build Napture
cargo build --release || exit 1

echo "Installing Napture..."

# Copy files
sudo install -Dm755 ./target/release/webx /usr/bin/napture
sudo install -Dm644 ./io.github.face_hh.Napture.metainfo.xml -t /usr/share/metainfo/
sudo install -Dm644 ./io.github.face_hh.Napture.desktop -t /usr/share/applications/
sudo install -Dm644 ./io.github.face_hh.Napture.svg -t /usr/share/icons/hicolor/scalable/apps/

# Update desktop database
sudo update-desktop-database

echo "Napture installation completed."
