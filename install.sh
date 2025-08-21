#!/bin/bash

# Claude Agents Installation Script
# Copies agent files from this repo to ~/.claude/agents/

set -e

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Source and destination directories
SOURCE_DIR="$(dirname "$0")/.claude/agents"
DEST_DIR="$HOME/.claude/agents"

echo "Installing Claude agents..."

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo -e "${RED}Error: Source directory $SOURCE_DIR not found${NC}"
    exit 1
fi

# Check for agent files
shopt -s nullglob
agent_files=("$SOURCE_DIR"/*.md)
shopt -u nullglob

if [ ${#agent_files[@]} -eq 0 ]; then
    echo -e "${RED}Error: No agent files found in $SOURCE_DIR${NC}"
    exit 1
fi

# Copy each .md file with confirmation for overwrites
copied=0
skipped=0

for file in "${agent_files[@]}"; do
    filename=$(basename "$file")
    
    if [ -f "$DEST_DIR/$filename" ]; then
        echo -e "${RED}⚠ $filename already exists${NC}"
        read -p "  Overwrite? (y/N) " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "  Skipped $filename"
            ((skipped++))
            continue
        fi
    fi
    
    cp -v "$file" "$DEST_DIR/"
    ((copied++))
done

# Summary
echo ""
echo -e "${GREEN}✓ Installation complete${NC}"
echo "  Copied: $copied file(s)"
echo "  Skipped: $skipped file(s)"
echo ""
echo "Installed agents in $DEST_DIR:"
for file in "$DEST_DIR"/*.md; do
    if [ -f "$file" ]; then
        basename "$file" .md | sed 's/^/  - /'
    fi
done
echo ""
echo "Agents are now available in Claude Code. Use them by typing their name or using the Task tool with the agent type."