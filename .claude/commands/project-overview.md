---
argument-hint:
  "[--depth shallow|deep] [--focus area] [--format summary|detailed] [--include-patterns] [--exclude-patterns]"
description: "Systematically analyzes project structure and purpose to provide comprehensive onboarding information"
---

# /on-boarding $ARGUMENTS

Systematically analyzes the current project's structure, purpose, and tech stack to provide comprehensive onboarding information. Helps new developers quickly understand the project and start contributing.

If $ARGUMENTS is not provided, the entire project is analyzed at standard depth.

## Task Process

1. **Project Structure Analysis**

   - Understand the directory structure
   - Identify key files (README, package.json, config files, etc.)
   - Assess codebase size

2. **Tech Stack Identification**

   - Languages and frameworks used
   - Build tools and package managers
   - Dependency analysis

3. **Understanding Project Purpose**

   - Analyze README and documentation
   - Identify core features
   - Understand the business domain

4. **Code Structure Analysis**

   - Identify architecture patterns
   - Module organization
   - Coding conventions

5. **Core Feature Summary**

   - Main entry points
   - Core business logic
   - APIs or interfaces

6. **Integrated Codebase Understanding**

   - Analyze architecture patterns and design principles
   - Identify core data models and state management
   - Review authentication/authorization and security implementation
   - Map key integration points and external dependencies

## Options

### Required Options
None — all options are optional.

### Optional Options

- `--depth [shallow|deep]`: Controls analysis depth
  - `shallow`: Analyze only basic structure and configuration (default)
  - `deep`: Include detailed code analysis and architecture patterns

- `--focus [area]`: Focus analysis on a specific area
  - `backend`: Server-side code and APIs
  - `frontend`: Client-side code and UI
  - `api`: API endpoints and integrations
  - `database`: Data models and schemas
  - `testing`: Test strategy and coverage
  - `devops`: Deployment and infrastructure configuration

- `--format [summary|detailed]`: Output format
  - `summary`: Brief overview (quick summary)
  - `detailed`: Detailed analysis (default)

- `--include-patterns [pattern]`: File patterns to include
  - e.g. `"*.js"`, `"src/**/*.ts"`

- `--exclude-patterns [pattern]`: File patterns to exclude
  - e.g. `"node_modules/**"`, `"*.test.js"`

## Usage Examples

### Basic Usage
```
> /on-boarding
```
Analyzes the entire project at standard depth.

### Deep analysis of full architecture
```
> /on-boarding --depth deep
```
Analyzes code patterns, architectural principles, and detailed dependencies.

### Focus on a specific area
```
> /on-boarding --focus backend --depth deep
```
Detailed analysis centered on backend code.

### Quick overview
```
> /on-boarding --format summary
```
Provides only the essential project information briefly.

### Analyze specific file patterns only
```
> /on-boarding --include-patterns "src/**/*.ts" --exclude-patterns "*.test.ts"
```
Analyzes only TypeScript source files, excluding test files.

### Combined usage
```
> /on-boarding --focus api --depth deep --format detailed
```
Deeply analyzes the API area and generates a detailed report.

## Output Format

When the command runs, the following structured information is provided:

### Default Output Structure

```markdown
# [Project Name] Onboarding Guide

## 📋 Project Overview
- **Purpose**: [Main purpose and business value of the project]
- **Type**: [Web Application | API Server | Library | CLI Tool | etc.]
- **Status**: [Active Development | Production | Maintenance | Archived]
- **Start Date**: [Project start date]

## 🛠 Tech Stack
### Core Technologies
- **Language**: [Primary programming language and version]
- **Framework**: [Main framework and version]
- **Database**: [Database system and version]

### Development Tools
- **Build Tool**: [Build system and task runner]
- **Package Manager**: [Dependency management tool]
- **Test Framework**: [Testing tools and strategy]

## 📁 Project Structure
```
project-root/
├── src/            # Main source code
│   ├── components/ # UI components
│   ├── services/   # Business logic
│   └── utils/      # Utility functions
├── tests/          # Test suite
├── docs/           # Project documentation
├── config/         # Configuration files
└── scripts/        # Build and deployment scripts
```

## 🎯 Key Features and Modules
### Core Features
1. **[Feature Name]**: [Detailed description and responsibilities]
2. **[Feature Name]**: [Detailed description and responsibilities]

### Key Modules
- `[Module Name]`: [Role and main APIs]
- `[Module Name]`: [Role and main APIs]

## 🏗 Architecture and Design Patterns
- **Architecture Style**: [Layered | Microservices | Event-driven | Serverless | etc.]
- **Design Patterns**: [Key design patterns used]
- **State Management**: [State management strategy and tools]
- **Communication**: [Sync/async, REST/GraphQL/gRPC, etc.]

## 🚀 Quick Start Guide
### Prerequisites
- [Required tools and versions]
- [System requirements]

### Installation and Running
1. **Clone the repository**
   ```bash
   git clone [repository-url]
   cd [project-name]
   ```

2. **Install dependencies**
   ```bash
   [package manager command]
   ```

3. **Environment setup**
   ```bash
   cp .env.example .env
   # Set required values in .env file
   ```

4. **Run the application**
   ```bash
   [run command]
   ```

## 🔧 Development Workflow
### Key Commands
- `[command]`: [description]
- `[command]`: [description]

### Branch Strategy
- [Branch strategy description]

### Code Style
- [Code style guide and linter configuration]

## 📚 Additional Resources
- **API Docs**: [link or path]
- **Architecture Diagram**: [link or path]
- **Contributing Guide**: [CONTRIBUTING.md path]
- **Issue Tracker**: [issue management system link]

## 🤝 Team Info and Contacts
- **Maintainers**: [contact information]
- **Communication**: [Slack, email, etc.]
```

## Analysis Scope

### Shallow Analysis (Default)
- **Project Metadata**: package.json, README, config files
- **Directory Structure**: Folder hierarchy and key file layout
- **Dependency List**: External libraries and version info
- **Basic Docs**: README, CONTRIBUTING, LICENSE parsing
- **Execution Time**: Generally under 30 seconds

### Deep Analysis
- **Code Architecture Patterns**: Design patterns, module structure, dependency graph
- **Business Logic Flow**: Core workflows and data flows
- **API Endpoint Analysis**: REST/GraphQL routes, methods, parameters
- **Data Model Structure**: Entity relationships, schema definitions, validation rules
- **Test Coverage**: Test strategy, coverage ratio, test types
- **Security Considerations**: Auth/authorization schemes, security vulnerability patterns
- **Performance Characteristics**: Bottlenecks, optimization opportunities, resource usage
- **Execution Time**: 1–5 minutes depending on project size

## Notes and Limitations

### Security
- Sensitive information (API keys, passwords, tokens, etc.) is automatically masked
- Environment variable files (.env) are analyzed for structure only — values are not shown
- Configuration files containing credentials are handled with care

### Performance
- Deep analysis of large projects (10,000+ files) may take time
- Use `--include-patterns` and `--exclude-patterns` to limit scope when needed
- Results are cached after the initial analysis, so subsequent runs are faster

### Excluded from Analysis
- Binary files and media files
- Build artifacts and generated code
- Package manager cache directories
- Common exclusion patterns: `node_modules/`, `dist/`, `build/`, `.git/`

## Related Commands

- `/analyze`: Deep analysis of specific code or features
- `/explain`: Explanation of code or concepts
- `/document`: Generate project documentation
- `/improve`: Code quality improvement suggestions
