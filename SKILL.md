---
name: elm-land
description: This skill provides instructions and tools for building, maintaining, and scaling Elm applications using the Elm Land framework. Use when the user asks to "init a project", "add a page", "add a layout", or "run the dev server" in an Elm Land context.
interface:
  display_name: "Elm Land"
  short_description: "Build reliable web apps with Elm Land."
  brand_color: "#60B5CC"
when_to_use:
  - User is working in an Elm Land project (contains elm-land.json)
  - User asks to create a new Elm Land application
  - User wants to add pages or layouts to an existing Elm Land app
  - User needs help with Elm Land routing or project structure
paths:
  - elm-land.json
  - elm.json
  - "**/*.elm"
allowed-tools:
  - Bash
  - Read
  - Edit
  - Write
  - Grep
license: MIT
metadata:
  author: Elm Land Team
  version: "1.4"
  compatibility: Requires Node.js (v18.16.0+), elm-land CLI
---

# Elm Land Skill

This skill provides the knowledge to build, maintain, and scale Elm applications using the [Elm Land](https://elm.land) framework.

## Core Concepts

Elm Land is a production-ready framework for Elm that features:
- **File-based routing**: URLs are automatically mapped to files in `src/Pages`.
- **Batteries included**: Built-in dev server, build tool, and code generation.
- **Stateful Layouts**: Reusable UI with its own state and logic.
- **Typed Interop**: Safe ways to work with JavaScript and environment variables.

## Getting Started

1. **Verify Environment**:
   Run the verification script to ensure your environment is ready:
   ```bash
   ./scripts/verify.sh
   ```

2. **Install the CLI**:
   ```bash
   npm install -g elm-land@latest
   ```

3. **Initialize a Project**:
   ```bash
   elm-land init <project-name>
   ```

4. **Run the Dev Server**:
   ```bash
   elm-land server
   ```
   By default, the server runs at `http://localhost:1234`.

## Routing Conventions

Files in `src/Pages/` determine the application's routes:

| URL Path | Elm File Path | Description |
| :--- | :--- | :--- |
| `/` | `src/Pages/Home_.elm` | The homepage. |
| `/sign-in` | `src/Pages/SignIn.elm` | Static route. |
| `/settings/account` | `src/Pages/Settings/Account.elm` | Nested route. |
| `/:user` | `src/Pages/User_.elm` | Dynamic route (parameterized). |
| `/:user/:repo` | `src/Pages/User_/Repo_.elm` | Nested dynamic route. |
| `/*` | `src/Pages/ALL_.elm` | Catch-all route (404 page). |

## Adding Features

Use the CLI to generate boilerplate and maintain consistency:

- **Add a Page**: `elm-land add page:<type> <url>`
  - `view`: No state, just HTML.
  - `sandbox`: Simple state (init, update, view).
  - `element`: Advanced state with side-effects (HTTP, etc.).
  - `component`: Full-featured page (rarely needed).
- **Add a Layout**: `elm-land add layout <name>`

## Project Structure

- `elm-land.json`: Framework settings (entry points, etc.).
- `elm.json`: Standard Elm package configuration.
- `src/Shared.elm`: Logic shared across all pages (e.g., user authentication state).
- `src/View.elm`: Shared view logic (e.g., custom `View` type).
- `src/Layouts/`: Reusable stateful UI components.

## Development Guidelines

- **Use the CLI**: Always use `elm-land add` commands to ensure files are placed correctly and required imports are added.
- **Follow Routing Rules**: Ensure dynamic parameters end with an underscore (e.g., `User_.elm`) to match URL segments.
- **Leverage Layouts**: Use `Page.withLayout` in your page modules to wrap them in consistent UI like navbars or sidebars.
- **Check References**: Refer to the `references/` directory for step-by-step guides and deep dives into specific topics.
- **Official Documentation**: Visit [elm.land](https://elm.land) for the full framework documentation.

## Reference Materials

Detailed guides and API references are available in the `references/` directory:
- [Conventions](references/conventions.md)
- [Checklists](references/checklists.md)
- [JS Interoperability](references/interop.md)
- [User Authentication](references/auth.md)
- [Layouts](references/layouts.md)
- [Effects](references/effects.md)
- [Examples](references/examples.md)
- [Deployment](references/deployment.md)
