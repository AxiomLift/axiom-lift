#!/bin/sh
# Connects this computer's Claude Code and Codex to Axiom.
set -e
TOKEN="$1"
# The start page this install came from, if any, so its page can follow along. Nothing else.
export AXIOM_JOURNEY=""
API="https://www.axiomlift.ai"
command -v python3 >/dev/null 2>&1 || { echo "Python 3 is needed. On a Mac run: xcode-select --install   On Linux: sudo apt install python3 (or your package manager). Then run this again." >&2; exit 1; }
DIR="$HOME/.axiom-context/src"
mkdir -p "$DIR"
for f in axiom.py codex.py git_sync.py opencode.py mcp.py chats.py stress.py scoreboard.py; do curl -fsSL "$API/client/$f" -o "$DIR/$f"; done
if [ -n "$TOKEN" ]; then
  # Someone at the terminal is asked which projects to leave out; a script with no terminal is not.
  if [ -t 1 ] && (: < /dev/tty) 2>/dev/null; then
    python3 "$DIR/axiom.py" install --api "$API" --token "$TOKEN" < /dev/tty
  else
    python3 "$DIR/axiom.py" install --api "$API" --token "$TOKEN"
  fi
else
  # No token: sign up or sign in right here. The script came down a pipe, so read the keyboard directly.
  # From the Stress Test page the test reads this computer's history first, then the same sign-up.
  python3 "$DIR/axiom.py" login --api "$API" < /dev/tty
fi
