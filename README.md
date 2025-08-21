# Claude Agents 🤖

A curated collection of specialized AI agents for Claude Code, designed to enhance your development workflow with focused expertise.

## Overview

Claude Agents are specialized AI assistants that provide targeted expertise for specific development tasks. This repository contains ready-to-use agent definitions that integrate seamlessly with Claude Code.

## Quick Start

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/claude-agents.git
cd claude-agents

# Install agents to your Claude configuration
./install.sh
```

### Usage

Once installed, agents can be used in multiple ways:

**1. Via Task Tool:**
```
Use the conventional-commit-agent to validate this commit message: "Added new feature"
```

**2. Natural Language:**
```
"Can you help me create a proper commit message for adding user authentication?"
```

**3. Direct Reference:**
```
"Use the conventional commit agent to review my recent commits"
```

## Available Agents

### 🟢 Conventional Commit Validator
**Purpose:** Validate, format, and create commit messages following Conventional Commits 1.0.0 specification

**Key Features:**
- ✅ Validates existing commit messages against the specification
- ✨ Generates properly formatted commit messages from descriptions
- 📚 Educates teams on conventional commit standards
- 🔧 Suggests improvements for better commit quality

**Example Usage:**
```
"I've added a new user authentication system and fixed a bug in the login form. 
Can you help me create proper commit messages?"
```

**Agent Response:**
```
I'll help you create conventional commit messages for these changes:

1. For the authentication system:
feat(auth): add user authentication system

2. For the login bug fix:
fix(login): resolve form validation issue

These follow the conventional commits specification with proper types and clear descriptions.
```

## Repository Structure

```
claude-agents/
├── .claude/
│   ├── agents/                          # Agent definitions
│   │   └── conventional-commit-validator.md
│   └── settings.local.json              # Permissions configuration
├── install.sh                           # Installation script
├── CLAUDE.md                           # Development documentation  
└── README.md                           # This file
```

## How Agents Work

Agents are markdown files with YAML frontmatter that define:

```yaml
---
name: agent-identifier
description: Detailed description with usage examples
tools: Available tool list
model: Preferred Claude model
color: UI color indicator
---
```

The markdown body contains specialized instructions that give Claude focused expertise in specific domains.

## Development

### Adding New Agents

1. Create a new `.md` file in `.claude/agents/`
2. Follow the agent template structure
3. Include comprehensive examples in the description
4. Test locally with `./install.sh`
5. Submit a pull request

### Agent Guidelines

- **Single Responsibility:** Each agent should have a focused purpose
- **Clear Examples:** Include concrete usage scenarios
- **Quality Standards:** Define expected output quality
- **Process Oriented:** Provide step-by-step approaches

## Contributing

We welcome contributions! Here's how you can help:

1. **🐛 Report Issues:** Found a problem? Open an issue
2. **💡 Suggest Agents:** Have an idea for a useful agent? Let us know
3. **🔧 Improve Agents:** Enhance existing agent capabilities
4. **📚 Documentation:** Help improve documentation and examples

### Contribution Process

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-agent`)
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## Roadmap

Future agent categories we're considering:

- **🔒 Security Agents:** Code security scanning, vulnerability assessment
- **🧪 Testing Agents:** Test generation, coverage analysis, quality assurance  
- **📖 Documentation Agents:** Auto-documentation, API docs, README generation
- **⚡ Performance Agents:** Performance analysis, optimization suggestions
- **🏗️ Architecture Agents:** System design, code review, refactoring guidance

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

- 📖 Check the [CLAUDE.md](CLAUDE.md) file for detailed development documentation
- 🐛 Open an issue for bug reports or feature requests  
- 💬 Start a discussion for questions or ideas

---

**Made for Claude Code developers who want specialized AI assistance for their workflows.**