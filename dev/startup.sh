#!/bin/bash
# =============================================================
#  dev:start — Development Session Startup
#  1. Pull latest code from GitHub
#  2. Read handover document
#  3. Show active changes & suggest next actions
# =============================================================

set -e

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLD='\033[1m'
RESET='\033[0m'

HANDOVER_FILE="dev/handover.md"

echo ""
echo -e "${BOLD}${CYAN}🚀 Starting Development Session${RESET}"
echo -e "${CYAN}=================================${RESET}"
echo ""

# ── Load NVM ──────────────────────────────────────────────────
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# ── 1. Git Pull ───────────────────────────────────────────────
echo -e "${BOLD}📥 [1/3] Pulling latest code from GitHub...${RESET}"
if git pull origin main; then
  echo -e "${GREEN}✅ Repository is up to date${RESET}"
else
  echo -e "${YELLOW}⚠️  Git pull encountered an issue — continuing anyway${RESET}"
fi

echo ""
echo -e "   Branch : ${BOLD}$(git branch --show-current)${RESET}"
echo -e "   Commit : $(git log -1 --format='%C(yellow)%h%Creset %s %C(dim)(%ar)%Creset' 2>/dev/null)"
echo ""

# ── 2. Read Handover Document ─────────────────────────────────
echo -e "${BOLD}📋 [2/3] Reading Handover Document...${RESET}"
echo ""

if [ -f "$HANDOVER_FILE" ]; then
  echo -e "${CYAN}─────────────────────────────────────────${RESET}"
  cat "$HANDOVER_FILE"
  echo -e "${CYAN}─────────────────────────────────────────${RESET}"
else
  echo -e "${YELLOW}  ⚠️  No handover document found at '${HANDOVER_FILE}'${RESET}"
  echo -e "  This looks like a fresh session. No prior context available."
fi

echo ""

# ── 3. Suggest Next Actions ───────────────────────────────────
echo -e "${BOLD}💡 [3/3] Suggested Next Actions${RESET}"
echo -e "${CYAN}─────────────────────────────────────────${RESET}"
echo ""

# Show active OpenSpec changes
ACTIVE_CHANGES=$(openspec list 2>/dev/null)
if [ -n "$ACTIVE_CHANGES" ]; then
  echo -e "  ${BOLD}📂 Active Changes:${RESET}"
  echo "$ACTIVE_CHANGES" | sed 's/^/     /'
  echo ""
  echo -e "  ${BOLD}▶ To continue implementing:${RESET}  /opsx:apply"
  echo -e "  ${BOLD}▶ To propose a new change:${RESET}   /opsx:propose"
  echo -e "  ${BOLD}▶ To archive a change:${RESET}       /opsx:archive"
else
  echo -e "  ${YELLOW}No active changes found.${RESET}"
  echo ""
  echo -e "  ${BOLD}▶ Start a new change:${RESET}        /opsx:propose"
  echo -e "  ${BOLD}▶ Explore ideas first:${RESET}       /opsx:explore"
fi

echo ""
echo -e "  ${BOLD}▶ Wrap up session:${RESET}           bash dev/ending.sh"
echo ""
echo -e "${CYAN}─────────────────────────────────────────${RESET}"
echo -e "${GREEN}${BOLD}✅ Development environment ready. Happy coding! 🎯${RESET}"
echo ""
