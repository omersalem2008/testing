#!/bin/bash
# Reset GitHub credentials

echo "Clearing cached GitHub credentials..."
printf "protocol=https\nhost=github.com\n" | git credential-manager erase
git config --global --unset credential.helper
git config --system --unset credential.helper
git remote set-url origin https://omersalem2008@github.com/omersalem2008/testing.git
echo "Done. Now run 'git push' and log in with your GitHub PAT."
