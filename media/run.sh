for file in *.png; do
  # Check if there are any .png files
  if [ -f "$file" ]; then
    # Remove the .png extension and echo the filename
    filename=$(echo "$file" | cut -d '.' -f 1)
    cp "${filename}.png" "${filename}-thumb.png"
    cp "${filename}.png" "${filename}-listing.png"
    cp "${filename}.png" "${filename}-single.png"
  fi
done