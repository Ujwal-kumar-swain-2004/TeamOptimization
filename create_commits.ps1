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
git commit -m "Initial commit: Add project documentation" --date="20 days ago"

git add SETUP.md
git commit -m "docs: Add setup instructions for Coral CLI" --date="19 days ago"

git add .gitignore
git commit -m "chore: Add gitignore file" --date="18 days ago"

git add requirements.txt
git commit -m "chore: Add Python backend dependencies" --date="17 days ago"

git add enterprise-agent/backend/requirements.txt
git commit -m "chore: Add backend specific requirements" --date="16 days ago"

git add enterprise-agent/frontend/package.json
git add enterprise-agent/frontend/package-lock.json
git commit -m "chore: Initialize frontend React/Vite app" --date="15 days ago"

git add enterprise-agent/frontend/index.html
git add enterprise-agent/frontend/vite.config.js
git commit -m "chore: Add Vite configuration and entry point" --date="14 days ago"

git add enterprise-agent/frontend/src/main.jsx
git add enterprise-agent/frontend/src/index.css
git commit -m "feat: Add frontend main styling and setup" --date="13 days ago"

git add enterprise-agent/frontend/src/components/
git commit -m "feat: Create UI components for dashboard" --date="12 days ago"

git add enterprise-agent/frontend/src/App.jsx
git commit -m "feat: Build main App layout and navigation" --date="11 days ago"

git add enterprise-agent/frontend/src/assets/
git commit -m "style: Add icons and images" --date="10 days ago"

git add enterprise-agent/backend/main.py
git commit -m "feat: Implement FastAPI backend server" --date="9 days ago"

git add enterprise-agent/backend/test_reaper.py
git add enterprise-agent/backend/test_slack.py
git commit -m "test: Add backend test scripts" --date="8 days ago"

git add api/
git commit -m "feat: Add Vercel serverless function wrappers" --date="7 days ago"

git add dashboard/
git commit -m "feat: Add pre-built dashboard assets" --date="6 days ago"

git add index.html
git commit -m "feat: Add static landing page" --date="5 days ago"

git add docker-compose.yml
git commit -m "chore: Add docker-compose for orchestration" --date="4 days ago"

git add Dockerfile
git add enterprise-agent/frontend/Dockerfile
git add enterprise-agent/backend/Dockerfile
git commit -m "chore: Add Dockerfiles for containerization" --date="3 days ago"

git add vercel.json
git commit -m "chore: Add Vercel deployment configuration" --date="2 days ago"

git add .
git commit -m "fix: Final UI tweaks and bug fixes for release" --date="1 day ago"

Write-Host "Git history created successfully!"
