#!/usr/bin/env bash
# setup.sh — symlink all ConfigFiles to their home directory locations
# Run once on a new machine: bash setup.sh

set -e
REPO="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$REPO/$1" dst="$HOME/$2"
  mkdir -p "$(dirname "$dst")"
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    mv "$dst" "${dst}.bak"
    echo "  backed up: $dst -> ${dst}.bak"
  fi
  ln -sfn "$src" "$dst"
  echo "  linked: $dst"
}

link .zshrc                               .zshrc
link .zprofile                            .zprofile
link .p10k.zsh                            .p10k.zsh
link .vimrc                               .vimrc
link .gitconfig                           .gitconfig
link .config/git/ignore                   .config/git/ignore
link .config/gh/config.yml                .config/gh/config.yml
link .config/karabiner/karabiner.json     .config/karabiner/karabiner.json

# Claude Code
link .claude/settings.json               .claude/settings.json
link .claude/CLAUDE.md                   .claude/CLAUDE.md

# Claude skills symlink — points to AI-Playground repo
SKILLS_SRC="$HOME/Pragad/Code/AI-Playground/skills"
SKILLS_DST="$HOME/.claude/skills"
if [ -d "$SKILLS_SRC" ]; then
  [ -e "$SKILLS_DST" ] && [ ! -L "$SKILLS_DST" ] && mv "$SKILLS_DST" "${SKILLS_DST}.bak"
  ln -sfn "$SKILLS_SRC" "$SKILLS_DST"
  echo "  linked: $SKILLS_DST"
else
  echo "  skipped: $SKILLS_SRC not found (clone AI-Playground first)"
fi

echo ""
echo "Done. Open a new terminal to apply shell changes."
echo "Notes:"
echo "  - oh-my-zsh must be installed separately: https://ohmyz.sh"
echo "  - Claude Code skills require AI-Playground repo at ~/Pragad/Code/AI-Playground"
