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

### 🔵 Linter Orchestrator Agent
**Purpose:** Multi-language code quality analysis with parallel issue resolution

**Key Features:**
- 🔍 Analyzes JavaScript/TypeScript, Python, Go, Rust, and general files
- ⚡ Spawns parallel agents for each detected issue
- 🔒 Linux-style file locking prevents conflicts
- 🧹 Automatic stale lock cleanup and error handling
- 📊 Comprehensive reporting with fix summaries

### 🟡 Issue Resolver Agent
**Purpose:** Specialized fixing of individual linting issues with file coordination

**Key Features:**
- 🎯 Focused single-issue resolution
- 🔐 Task ID-based file locking coordination
- 🛠️ Language-specific fix implementations
- 🔄 Graceful conflict handling and retry logic
- ✨ Safe, non-breaking automated corrections

### 🔷 Documentation Agent
**Purpose:** Create, update, and maintain comprehensive project documentation

**Key Features:**
- 📝 Generates README files, API docs, technical specs, and user guides
- 🔄 Updates documentation to match current codebase state
- ✅ Validates documentation completeness and accuracy
- 📋 Follows markdown best practices for clean, consistent formatting
- 🤖 Fully automated documentation generation from code analysis

**Example Usage:**
```
"Update the README and API docs to reflect the new features I added"
```

**Agent Response:**
```
I'll analyze your recent changes and update the documentation:

✓ README.md updated:
  - Added new features section for user authentication
  - Updated installation steps for new dependencies
  - Added usage examples for new API endpoints

✓ API documentation updated:
  - Documented 3 new functions with parameters and return types
  - Added code examples for each endpoint
  - Updated TypeScript type definitions

All documentation now reflects the current codebase state.
```

### 🟣 GitIngest Repository Processor
**Purpose:** Actively generate LLM-optimized repository digests using gitingest tool

**Key Features:**
- 🚀 Executes gitingest commands to create repository digests
- 📦 Handles installation and configuration automatically
- 🎯 Optimizes output for specific token limits
- 🔐 Manages authentication for private repositories
- 📊 Provides comprehensive execution statistics

**Example Usage:**
```
"Generate a digest of the React repository for analysis"
```

**Agent Response:**
```
I'll use gitingest to create an LLM-optimized digest of the React repository:

Installing gitingest...
✓ gitingest installed successfully

Executing: gitingest https://github.com/facebook/react --output react-digest.txt

📊 Digest Statistics:
- Files processed: 1,847
- Total size: 4.2 MB
- Estimated tokens: ~1.2M
- Output file: react-digest.txt

The digest is ready for LLM analysis with complete repository structure and source code.
```

### 🟢 Conventional Commit Validator

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

### 🔄 Parallel Linter System
**Usage:** The linter agents work together for comprehensive code quality management

**Example Usage:**
```
"Can you lint my entire project and fix all the issues you can?"
```

**System Response:**
```
🔵 Linter Orchestrator: Scanning project for issues...
├── Found 23 issues across 8 files
├── JavaScript: 12 issues detected
├── Python: 8 issues detected  
├── Go: 3 issues detected

🟡 Spawning 23 Issue Resolver agents...
├── Agent-1: Fixing unused variable in src/main.js
├── Agent-2: Organizing imports in utils.py
├── Agent-3: Formatting code in main.go
├── ... (parallel processing)

📊 Results Summary:
✅ Issues Fixed: 19/23
🔒 Lock Conflicts: 2 (gracefully handled)
⚠️  Manual Review: 2 complex issues

Remaining issues require architectural decisions or breaking changes.
```

## Repository Structure

```
claude-agents/
├── .claude/
│   ├── agents/                          # Agent definitions
│   │   ├── conventional-commit-agent.md
│   │   ├── linter-orchestrator-agent.md
│   │   ├── issue-resolver-agent.md
│   │   ├── documentation-agent.md
│   │   ├── gitingest-agent.md
│   │   ├── changelog-agent.md
│   │   ├── backlog-agent.md
│   │   └── swift-syntax-researcher.md
│   └── settings.local.json              # Permissions configuration
├── install.sh                           # Installation script
├── CHANGELOG.md                         # Version history
├── CLAUDE.md                           # Development documentation
├── LICENSE                             # MIT license
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