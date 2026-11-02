# Branching Strategy

| Branch | Purpose | Typical changes |
|---|---|---|
| `main` | Stable, reviewed version | Release-ready documentation and project files |
| `dev` | Integration branch | Features that have passed review |
| `feature/<name>` | Isolated feature work | One focused change at a time |

## Rules
1. Do not do routine feature work directly on `main`.
2. Create feature branches from `dev`.
3. Use descriptive branch names, such as `feature/add-health-check`.
4. Open a Pull Request to merge feature branches into `dev`.
5. Merge `dev` into `main` through a release Pull Request.
6. Resolve conflicts in the feature branch or integration branch, test, and push the resolution before merging.

