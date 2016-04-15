#!/bin/bash

read -p "Project Name: " -r project_name
find . -type f \( -name "*.yml" -o -name "*.md" \) -exec sed -i '' s/insert_project_name/"$project_name"/ {} +

read -p "Git Repo URL: " -r repo_url
find . -type f \( -name "*.yml" -o -name "*.md" \) -exec sed -i '' s/insert_repo_url/"$repo_url"/ {} +
