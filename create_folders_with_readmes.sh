#!/bin/bash

# Define the folder structure
folders=(
  "01-introduction"
  "02-docker-basics"
  "03-dockerfile"
  "04-docker-compose"
  "05-docker-networking"
  "06-docker-registry"
  "07-advanced-docker"
  "08-docker-security"
  "09-docker-troubleshooting"
)

# Loop through each folder
for folder in "${folders[@]}"; do
  # Create the folder
  mkdir -p "$folder"
  
  # Create a README.md file inside the folder with a basic content template
  echo "# $folder" > "$folder/README.md"
  echo "This is the README for the $folder section of the Ultimate Docker Guide." >> "$folder/README.md"
  echo "More detailed content will be added here later." >> "$folder/README.md"
done

# Stage all changes (folders and README.md files)
git add .

# Commit the changes
git commit -m "Create folder structure and README.md for each section"

# Push to GitHub (assuming you're already connected to the remote origin)
git push origin main

echo "Folders and README.md files created and changes pushed to GitHub!"

