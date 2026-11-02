# Useful Git Commands

| Command | Purpose |
|---|---|
| `git init` | Initialize a repository |
| `git status` | Show working-tree status |
| `git add .` | Stage changes |
| `git commit -m "message"` | Save a commit |
| `git branch` | List local branches |
| `git switch -c branch-name` | Create and switch branch |
| `git switch branch-name` | Switch branch |
| `git merge branch-name` | Merge a branch |
| `git pull` | Fetch and integrate remote changes |
| `git push` | Upload commits |
| `git log --oneline` | Compact commit history |
| `git diff` | Show unstaged changes |
| `git stash` | Temporarily save uncommitted changes |
| `git tag -a v1.0.0 -m "message"` | Create annotated tag |
| `git push origin v1.0.0` | Push a tag |

## Merge conflict steps
1. Run `git status` to identify conflicted files.
2. Open each file and find `<<<<<<<`, `=======`, and `>>>>>>>`.
3. Edit the file to keep the correct content and remove conflict markers.
4. Run tests or checks.
5. Stage and commit the resolution:

git add <file>
git commit -m "Resolve merge conflict in <file>"


