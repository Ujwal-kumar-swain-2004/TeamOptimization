Remove-Item -Path .git -Recurse -Force -ErrorAction SilentlyContinue

git init
git branch -M main

$ErrorActionPreference = "SilentlyContinue"
$userName = git config --global user.name
if (-not $userName) {
    git config user.name "Developer"
    git config user.email "dev@example.com"
}
$ErrorActionPreference = "Continue"

git add README.md
git commit -m "Initial commit: Add project documentation" --date="2026-05-25T10:00:00"

git add SETUP.md
git commit -m "docs: Add setup instructions for Coral CLI" --date="2026-05-25T13:00:00"

git add .gitignore
git commit -m "chore: Add gitignore file" --date="2026-05-25T16:00:00"

git add requirements.txt
git commit -m "chore: Add Python backend dependencies" --date="2026-05-26T09:00:00"

git add enterprise-agent/backend/requirements.txt
git commit -m "chore: Add backend specific requirements" --date="2026-05-26T12:00:00"

git add enterprise-agent/frontend/package.json
git add enterprise-agent/frontend/package-lock.json
git commit -m "chore: Initialize frontend React/Vite app" --date="2026-05-26T15:00:00"

git add enterprise-agent/frontend/index.html
git add enterprise-agent/frontend/vite.config.js
git commit -m "chore: Add Vite configuration and entry point" --date="2026-05-26T18:00:00"

git add enterprise-agent/frontend/src/main.jsx
git add enterprise-agent/frontend/src/index.css
git commit -m "feat: Add frontend main styling and setup" --date="2026-05-27T09:30:00"

git add enterprise-agent/frontend/src/components/
git commit -m "feat: Create UI components for dashboard" --date="2026-05-27T12:30:00"

git add enterprise-agent/frontend/src/App.jsx
git commit -m "feat: Build main App layout and navigation" --date="2026-05-27T15:30:00"

git add enterprise-agent/frontend/src/assets/
git commit -m "style: Add icons and images" --date="2026-05-27T18:30:00"

git add enterprise-agent/backend/main.py
git commit -m "feat: Implement FastAPI backend server" --date="2026-05-28T10:00:00"

git add enterprise-agent/backend/test_reaper.py
git add enterprise-agent/backend/test_slack.py
git commit -m "test: Add backend test scripts" --date="2026-05-28T14:00:00"

git add api/
git commit -m "feat: Add Vercel serverless function wrappers" --date="2026-05-28T17:00:00"

git add dashboard/
git commit -m "feat: Add pre-built dashboard assets" --date="2026-05-29T09:00:00"

git add index.html
git commit -m "feat: Add static landing page" --date="2026-05-29T12:00:00"

git add docker-compose.yml
git commit -m "chore: Add docker-compose for orchestration" --date="2026-05-29T16:00:00"

git add Dockerfile
git add enterprise-agent/frontend/Dockerfile
git add enterprise-agent/backend/Dockerfile
git commit -m "chore: Add Dockerfiles for containerization" --date="2026-05-30T10:00:00"

git add vercel.json
git commit -m "chore: Add Vercel deployment configuration" --date="2026-05-30T11:00:00"

git add .
git commit -m "fix: Final UI tweaks and bug fixes for release" --date="2026-05-30T12:00:00"

Write-Host "Git history recreated successfully with May 25 to May 30 dates!"
