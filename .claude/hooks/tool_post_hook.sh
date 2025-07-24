#!/bin/bash

# Claude Code tool completion notification hook
# This script sends notifications to Mac and Apple Watch

TOOL_NAME="$1"
EXIT_CODE="$2"

# Skip notification for certain tools to avoid spam
SKIP_TOOLS=("Bash" "Read" "Glob" "Grep" "LS")
for skip in "${SKIP_TOOLS[@]}"; do
    if [[ "$TOOL_NAME" == "$skip" ]]; then
        exit 0
    fi
done

# Determine success/failure
if [ "$EXIT_CODE" -eq 0 ]; then
    STATUS="✅ 완료"
    SOUND="default"
else
    STATUS="❌ 실패"
    SOUND="Basso"
fi

# Send notification with Apple Watch support
terminal-notifier \
    -title "Claude Code" \
    -subtitle "$TOOL_NAME" \
    -message "$STATUS" \
    -sound "$SOUND" \
    -ignoreDnD \
    -sender "com.apple.Terminal"

# Optional: Add a slight delay to ensure notification is processed
sleep 0.1