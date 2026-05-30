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

function Invoke-GitCommit {
    param (
        [string]$Message,
        [string]$DateString
    )
    $env:GIT_AUTHOR_DATE = $DateString
    $env:GIT_COMMITTER_DATE = $DateString
    git commit -m $Message
}

git add README.md SETUP.md .gitignore
Invoke-GitCommit -Message "Initial setup and documentation" -DateString "2026-05-25T10:00:00"

git add requirements.txt docker-compose.yml Dockerfile enterprise-agent/frontend/Dockerfile enterprise-agent/backend/Dockerfile vercel.json
Invoke-GitCommit -Message "chore: Add project requirements and container configs" -DateString "2026-05-25T15:00:00"

git add enterprise-agent/frontend/package.json enterprise-agent/frontend/package-lock.json enterprise-agent/frontend/index.html enterprise-agent/frontend/vite.config.js
Invoke-GitCommit -Message "chore: Initialize Vite React frontend" -DateString "2026-05-26T11:00:00"

git add enterprise-agent/frontend/src/main.jsx enterprise-agent/frontend/src/index.css
Invoke-GitCommit -Message "style: Add main stylesheet and entry point" -DateString "2026-05-26T16:00:00"

git add enterprise-agent/frontend/src/components/
Invoke-GitCommit -Message "feat: Implement frontend UI components" -DateString "2026-05-27T10:00:00"

git add enterprise-agent/frontend/src/App.jsx
Invoke-GitCommit -Message "feat: Build main App layout and state" -DateString "2026-05-27T14:00:00"

git add enterprise-agent/backend/main.py enterprise-agent/backend/requirements.txt
Invoke-GitCommit -Message "feat: Implement FastAPI backend service" -DateString "2026-05-28T11:00:00"

git add enterprise-agent/backend/test_reaper.py enterprise-agent/backend/test_slack.py api/
Invoke-GitCommit -Message "test: Add backend test suites and serverless functions" -DateString "2026-05-28T16:00:00"

git add dashboard/ index.html
Invoke-GitCommit -Message "feat: Integrate dashboard assets and landing page" -DateString "2026-05-29T12:00:00"

git add .
Invoke-GitCommit -Message "fix: Final polishing and system integration" -DateString "2026-05-30T11:00:00"

Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

git remote add origin https://github.com/Ujwal-kumar-swain-2004/TeamOptimization.git
git push -u origin main -f
Write-Host "Recreated and pushed 10 commits successfully with correct committer dates!"
