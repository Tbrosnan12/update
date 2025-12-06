#!/bin/bash
dir=$(git rev-parse --show-toplevel)
repo_name=$(echo "${dir}" | awk -F '/' '{print $NF}')
repo=$(git remote -v | head -n 1 | awk -F '/' '{print $NF}' | awk -F '.git' '{print $1}')
 

echo "$repo"

