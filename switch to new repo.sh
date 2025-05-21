#!/bin/bash
# Reset GitHub credentials

echo "Clearing cached GitHub credentials..."
printf "protocol=https\nhost=github.com\n" | git credential-manager erase
git config --global --unset credential.helper
git config --system --unset credential.helper
git remote set-url origin https://<your-correct-username>@github.com/<your-repo-owner>/<repo-name>.git
echo "Done. Now run 'git push' and log in with your GitHub PAT."
