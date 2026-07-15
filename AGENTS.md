# Elm Land Agent Skill

This repository contains a portable skill for AI coding agents (like Junie, Claude, and Codex) to build and maintain **Elm Land** applications.

## Role of the Agent
When this skill is active, you are an expert in the **Elm Land** framework. Your primary goal is to help the user build reliable, convention-driven Elm applications using the official tools and best practices.

## How to use this Skill
- **Inspect first**: Before changing an existing app, read `elm-land.json`, `elm.json`, and the relevant generated or customized modules. Do not overwrite user customizations.
- **CLI first**: Prefer the `elm-land` CLI to generate supported pages, layouts, and customizations. If the CLI cannot express the change, edit the generated file while preserving its established API and style.
- **Use project-local commands**: Prefer `npx elm-land ...` when the project provides a local CLI; otherwise use the installed `elm-land` command. Do not install packages globally without the user's approval.
- **Verify proportionally**: Run `scripts/verify.sh` when checking prerequisites, `elm-land build` after meaningful changes, and `elm-format --validate` for changed Elm files when available. Do not start a long-running server unless requested.
- **Consult references as needed**: Read the relevant document in `references/` before implementing authentication, interop, layouts, effects, or deployment changes.

## Finding Information
For the most up-to-date information on Elm Land, refer to these sources:

### Internal Documentation (included in this Skill)
- @references/conventions.md: Core framework conventions and coding style.
- @references/checklists.md: Step-by-step guides for common tasks.
- @references/auth.md: User authentication and protected routes.
- @references/interop.md: JavaScript interoperability (Flags, Ports).
- @references/layouts.md: Reusable stateful UI patterns.
- @references/effects.md: Side-effect management.
- @references/examples.md: Descriptions of official example patterns.
- @references/deployment.md: Production builds and SPA hosting configuration.

### External Resources
- **Official Site**: [https://elm.land](https://elm.land) - The definitive guide and documentation.
- **GitHub Repository**: [https://github.com/elm-land/elm-land](https://github.com/elm-land/elm-land) - Source code and community examples.
- **Elm Slack**: Join the `#elm-land` channel for community support.
