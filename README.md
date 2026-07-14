# Elm Land Skill for Junie

This repository is a [Junie Agent Skill](https://junie.jetbrains.com/docs/agent-skills.html) for the [Elm Land](https://elm.land) framework.

## Installation

To use this skill in your Junie projects, you can install it by copying this repository into your project's `.junie/skills` directory:

```bash
mkdir -p .junie/skills
git clone https://github.com/jachin/elm-land-skill.git .junie/skills/elm-land
```

Alternatively, you can install it globally:

```bash
mkdir -p ~/.junie/skills
git clone https://github.com/jachin/elm-land-skill.git ~/.junie/skills/elm-land
```

## Features

- **CLI Knowledge**: Teaches Junie how to use `elm-land` commands (`init`, `server`, `add page`, etc.).
- **Routing Rules**: Explains Elm Land's file-based routing system.
- **Project Structure**: Helps Junie understand where things go in an Elm Land app.
- **Documentation Reference**: Provides access to the full Elm Land documentation and examples included in this repository.
- **Environment Verification**: Includes a script to ensure your development environment is correctly set up.

## Usage

Once installed, Junie will automatically discover the skill when you ask questions or give tasks related to Elm Land.

Example prompts:
- "How do I add a new page with a sidebar layout?"
- "Set up a new Elm Land project for a blog."
- "Verify if my environment is ready for Elm Land."

## License

This skill is distributed under the MIT License. The included `elm-land` source code and documentation are subject to their own respective licenses.
