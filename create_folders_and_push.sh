#!/bin/bash

# Define the folder structure
folders=(
"01-introduction-to-docker"
"02-installing-docker"
"03-docker-basic-commands"
"04-dockerfile-and-images"
"05-docker-containers"
"06-docker-volumes"
"07-docker-networks"
"08-docker-compose"
"09-real-world-projects/project-1"
"09-real-world-projects/project-2"
)

# Loop through each folder
for folder in "${folders[@]}"; do
  # Create the folder (and parent folders if needed)
  mkdir -p "$folder"
  
  # Create a README.md inside each folder
  echo "# ${folder}" > "${folder}/README.md"
  echo "" >> "${folder}/README.md"
  echo "📚 This section covers **${folder//-/ }** topics." >> "${folder}/README.md"
done

# Stage all new folders and README.md files
git add .

# Commit the changes
git commit -m "🚀 Create folder structure with README.md for Ultimate Docker Guide"

# Push to GitHub main branch
git push origin main

echo "✅ All folders created with README.md and pushed to GitHub successfully!"

