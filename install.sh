#!/bin/bash
version="1.0"
echo "# Script developed by mavinsi"
echo "# github.com/mavinsi/passwarden"
echo "# passwarden version $version"
echo ""
echo "- Installing..."
echo "- Copying passwarden to /bin/ folder"
sudo cp passwarden /usr/local/bin/passwarden
echo "- passwarden $version was sucessfully installed!"
