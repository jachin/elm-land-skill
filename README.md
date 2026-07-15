# Elm Land Skill

This repository is a portable [Agent Skill](https://junie.jetbrains.com/docs/agent-skills.html) for the [Elm Land](https://elm.land) framework. It is designed to work with **Junie**, **OpenAI Codex**, **Claude Code**, **Amp**, and other AI coding assistants that support the `SKILL.md` or `AGENTS.md` formats.

## Installation

### For OpenAI Codex
Codex looks for skills in `~/.codex/skills` (global) or project-local directories. To install globally:

```bash
mkdir -p ~/.codex/skills
git clone https://github.com/jachin/elm-land-skill.git ~/.codex/skills/elm-land
```

You can also use the `AGENTS.md` file by linking it to your project root:

```bash
ln -s .junie/skills/elm-land/AGENTS.md AGENTS.md
```

### For Claude Code
Claude Code looks for skills in `~/.claude/skills` (global) or `.claude/skills` (project-local). To install this skill globally:

```bash
mkdir -p ~/.claude/skills
git clone https://github.com/jachin/elm-land-skill.git ~/.claude/skills/elm-land
```

Once installed, you can use `/elm-land` in Claude Code or it will automatically trigger when you work on Elm Land files.

### For Amp
Amp looks for skills in `.agents/skills` (project-local) or `~/.config/agents/skills` (global). To install this skill globally:

```bash
mkdir -p ~/.config/agents/skills
git clone https://github.com/jachin/elm-land-skill.git ~/.config/agents/skills/elm-land
```

Once installed, you can use `@elm-land` in Amp or it will automatically trigger when you work on Elm Land files. You can also link the `AGENTS.md` file to your project root for project-level guidance:

```bash
ln -s .agents/skills/elm-land/AGENTS.md AGENTS.md
```

### For Junie
To use this skill in your Junie projects, copy this repository into your project's `.junie/skills` directory:

```bash
mkdir -p .junie/skills
git clone https://github.com/jachin/elm-land-skill.git .junie/skills/elm-land
```

## Features

- **CLI Knowledge**: Teaches agents how to use `elm-land` commands (`init`, `server`, `add page`, etc.).
- **Routing Rules**: Explains Elm Land's file-based routing system.
- **Project Structure**: Helps agents understand where things go in an Elm Land app.
- **Automatic Activation**: Includes `paths` and `when_to_use` for automated triggering in supported agents.
- **Documentation Reference**: Provides access to the full Elm Land documentation and examples.
- **Environment Verification**: Includes a script to ensure your development environment is correctly set up.

## Usage

Once installed, your AI agents will automatically discover the skill when you ask questions or give tasks related to Elm Land.

Example prompts:
- "How do I add a new page with a sidebar layout?"
- "Set up a new Elm Land project for a blog."
- "Verify if my environment is ready for Elm Land."

## License

This skill is distributed under the MIT License. The included `elm-land` source code and documentation are subject to their own respective licenses.
