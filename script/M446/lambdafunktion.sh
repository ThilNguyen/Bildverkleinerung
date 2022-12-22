#!/bin/bash

# Installieren Sie ImageMagick (falls noch nicht installiert)
apt-get update
apt-get install -y imagemagick

# der name der bilddatei
input_file="input.jpg"
output_file="output.jpg"

# Das bild um 50% verleinern
convert $input_file -resize 50% $output_file

# Verkleinert bild zurückgeben
echo "Verkleinertes Bild wurde erstellt: $output_file"