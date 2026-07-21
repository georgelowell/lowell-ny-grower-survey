#!/bin/bash
# Push the survey to GitHub
# Run this after creating the repo at:
# https://github.com/lowell-herb-co/lowell-ny-grower-survey

set -e

cd "$(dirname "$0")"

echo "=== Pushing 2026 Lowell Grower's Survey ==="

# Check if remote exists
if ! git remote get-url origin &>/dev/null; then
    echo "Setting remote origin..."
    git remote add origin https://github.com/lowell-herb-co/lowell-ny-grower-survey.git
fi

# Push
echo "Pushing to GitHub..."
git push -u origin main

echo ""
echo "=== Done ==="
echo "Site will be available at: https://lowell-herb-co.github.io/lowell-ny-grower-survey"
echo ""
echo "Next steps:"
echo "  1. Go to repo Settings → Pages → enable GitHub Pages from main branch / (root)"
echo "  2. The admin page is at: /admin.html"
echo "  3. Generate tokens from the admin page, then export the outreach CSV"
echo "  4. Send survey links to cultivators"
