# Git Workflow

## 1. Initialize
git init
git branch -M main
git add .
git commit -m "Initial commit: add DevOps Git workflow project"


## 2. Connect GitHub
Create an empty GitHub repository named `devops-git-workflow` (do not initialize it with a README if you already created one locally).
git remote add origin https://github.com/madasuswathi/devops-git-workflow.git
git push -u origin main


## 3. Create the development branch
git switch -c dev
git push -u origin dev

## 4. Work on a feature
git switch dev
git pull origin dev
git switch -c feature/add-workflow-docs

Edit or add a file, then:
git status
git diff
git add docs/
git commit -m "Add Git workflow documentation"
git push -u origin feature/add-workflow-docs


## 5. Pull Requests
On GitHub, open a Pull Request:
- base: `dev`
- compare: `feature/add-workflow-docs`

Review the changes and merge the PR. Then update the local `dev` branch:
git switch dev
git pull origin dev


When `dev` is ready for release, open another Pull Request:
- base: `main`
- compare: `dev`

Review and merge it. Pull Requests are created and merged on GitHub; pushing a branch alone does not create a PR.

## 6. Tags
After the release changes are on `main`:
git switch main
git pull origin main
git tag -a v1.0.0 -m "Version 1.0.0"
git push origin v1.0.0
git tag


## 7. Verify history
git branch -a
git log --oneline --graph --decorate --all
git remote -v
git status

