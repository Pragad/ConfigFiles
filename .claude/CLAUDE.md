# Pragad — Global User Profile

## Personal Repos

| Repo | Path | Purpose |
|---|---|---|
| Health | `/Users/pragad/Pragad/Health` | Medical records, lab results, health plans. Read `Health/CLAUDE.md` first. |
| Investment | `/Users/pragad/Pragad/Investment` | Options trading (Cash-Secured Puts). See `Investment/Workbook/00_README.md`. |
| Shelf | `/Users/pragad/Pragad/Shelf` | Curated personal learnings — French, Recipes (future), etc. Read `Shelf/CLAUDE.md` first. |

## Response Preferences
- Concise. No trailing summaries of what you just did.
- No emojis unless explicitly asked.
- Structured markdown and tables preferred for data.
- Present a plan before executing non-trivial tasks. Wait for confirmation.
- When I say "yes let's go" or similar, start building immediately.

## Cross-Repo Search
To search a term across all personal repos at once:
```bash
grep -r "<term>" /Users/pragad/Pragad/Health /Users/pragad/Pragad/Investment /Users/pragad/Pragad/Shelf
```

## AI Collaboration Standards
Apply these across all personal repos (not just code projects) — see `/Users/pragad/Pragad/Code/AI-Playground/standards/`:
- `ai-collaboration.md` — model-tier selection, pilot-before-full-run, manifest-based resumability, sub-batch size limits, repo-based agent output persistence. Applies to any bulk/repetitive AI-assisted workflow (lab-result intake, trade-log intake, French-learning intake, etc.).
- `git-workflow.md` — applies to any personal repo that is itself a git repo (e.g. `Health/Workbook/`), not just HealixAI code: never push directly to main, feature branch + PR for every change, stage specific files only.
