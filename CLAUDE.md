# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Claude Agents configuration repository designed to store specialized AI agents for Claude Code. These agents provide focused expertise for specific development tasks like commit message validation, code review, testing, and more.

## Repository Structure

```
claude-agents/
├── .claude/
│   ├── agents/                # Agent definitions
│   │   └── conventional-commit-validator.md
│   └── settings.local.json    # Local permissions configuration
├── CLAUDE.md                  # This file
├── install.sh                 # Installation script
└── README.md                  # Public documentation
```

## Available Agents

### Current Agents (1 total)

1. **conventional-commit-validator** (aliases: `conventional-commit-agent`)
   - **Purpose**: Validate, format, and create commit messages following Conventional Commits 1.0.0 specification
   - **Model**: sonnet
   - **Color**: green
   - **Tools**: Full tool access for commit analysis and generation
   - **Use Cases**:
     - Validate existing commit messages against the specification
     - Generate properly formatted commit messages from change descriptions
     - Educate teams on conventional commit standards
     - Review and improve commit message quality

## Primary Purpose

This repository serves as a centralized location for:
- Storing reusable agent definitions for Claude Code
- Maintaining specialized AI expertise for development workflows
- Configuring agent permissions and capabilities
- Sharing proven agent patterns with the community

## Installation and Setup

### Installing Agents
```bash
# Run the installation script to copy agents to ~/.claude/agents/
./install.sh
```

The installation script:
- Creates `~/.claude/agents/` directory if it doesn't exist
- Copies all `.md` files from `.claude/agents/` to the user directory
- Prompts for confirmation before overwriting existing agents
- Provides a summary of installed agents

### Using Agents

Once installed, agents can be used in Claude Code in several ways:

1. **Via Task Tool**: Use the Task tool with the agent type
   ```
   Task(subagent_type: "conventional-commit-agent", prompt: "Validate this commit message: 'Added new feature'")
   ```

2. **Natural Language**: Claude will automatically select appropriate agents based on context
   ```
   "Can you help me create a proper commit message for adding user authentication?"
   ```

3. **Direct Reference**: Mention the agent by name
   ```
   "Use the conventional commit agent to validate my recent commits"
   ```

## Agent Development Guide

### Agent File Structure

All agents follow a YAML frontmatter structure with these key sections:

```yaml
---
name: agent-name
description: Detailed description with examples
tools: List of available tools
model: preferred model (sonnet, opus, etc.)
color: UI color indicator
---

# Agent instructions in markdown
```

### Required Frontmatter Fields

- **name**: Unique identifier for the agent
- **description**: Comprehensive description with usage examples
- **tools**: Comma-separated list of available tools
- **model**: Preferred Claude model (sonnet, opus, haiku)
- **color**: Color for UI indication (green, blue, red, yellow, etc.)

### Agent Content Guidelines

The markdown body should contain:
1. **Role Definition**: Clear statement of the agent's purpose
2. **Core Responsibilities**: Numbered list of main functions
3. **Expertise Areas**: Specific knowledge domains
4. **Process Guidelines**: Step-by-step approach
5. **Quality Standards**: Output expectations
6. **Error Handling**: How to deal with edge cases

### Examples in Description

Include concrete examples in the description field showing:
- **Context**: Situation where agent applies
- **User Input**: Typical user request
- **Assistant Response**: How Claude should respond
- **Commentary**: Why this agent is appropriate

## Best Practices

### Agent Design
1. **Single Responsibility**: Each agent should have a focused purpose
2. **Clear Expertise**: Define specific knowledge domains
3. **Process Oriented**: Provide step-by-step approaches
4. **Quality Focused**: Set high standards for outputs
5. **Context Aware**: Consider when the agent should activate

### Development Workflow
1. **Define Purpose**: Clear problem the agent solves
2. **Write Description**: Include detailed examples
3. **Set Capabilities**: Choose appropriate tools and model
4. **Document Process**: Step-by-step approach
5. **Test Locally**: Verify agent behavior
6. **Install & Validate**: Use `./install.sh` to test

### Git Workflow
```bash
# Check current status
git status

# Add new or modified agent files
git add .claude/agents/new-agent.md

# Commit with descriptive message
git commit -m "feat: add new-agent for specific purpose"
```

## Troubleshooting

### Common Issues

1. **Agent not found**
   - Run `./install.sh` to ensure agents are installed
   - Check agent name matches the `name` field in frontmatter
   - Verify agent file is in `~/.claude/agents/`

2. **Agent not activating**
   - Ensure description includes relevant examples
   - Check if context matches agent's intended use cases
   - Try explicit agent reference in your request

3. **Permission denied**
   - Verify agent has appropriate tools listed
   - Check `.claude/settings.local.json` for required permissions
   - Ensure install script permissions (`chmod +x install.sh`)

4. **Invalid agent format**
   - Validate YAML frontmatter syntax
   - Ensure all required fields are present
   - Check markdown formatting in agent body

### Debugging Tips

- Test agent descriptions with YAML validators
- Use explicit agent names to debug activation
- Check Claude Code logs for agent loading errors
- Verify frontmatter fields match expected format

## Contributing

### Adding New Agents
1. Create agent file in `.claude/agents/` following the structure
2. Include comprehensive description with examples
3. Test locally with `./install.sh`
4. Submit pull request with clear description

### Improving Existing Agents
1. Maintain backward compatibility
2. Update examples to reflect changes
3. Test thoroughly before submitting
4. Document changes in commit messages

## Agent Categories

Future agents may include:
- **Quality Assurance**: Code review, testing, security scanning
- **Development**: Documentation generation, API design, refactoring
- **Operations**: Deployment, monitoring, performance analysis
- **Analysis**: Code analysis, dependency review, architecture assessment

This repository starts small with the conventional commit validator but can grow into a comprehensive collection of specialized development agents.