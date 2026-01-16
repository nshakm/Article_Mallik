#!/bin/bash

# 1. Ensure we are in the parent directory 
cd ..
# (This script assumes it is being run from the root)

echo "Staging submodule update..."
# This tells the parent repo to record the new 'state' of the submodule
git add paper_figs

# 2. Commit the change
# We use a timestamp so the message is unique
TIMESTAMP=$(date +"%Y-%m-%d %H:%M")
git commit -m "Sync paper_figs at $TIMESTAMP"

# 3. Push to your main repo (GitHub/GitLab)
echo "Pushing update to parent remote..."
git push origin main

echo "Parent repository is now synced with paper_figs!"