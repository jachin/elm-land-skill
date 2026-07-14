---
name: elm-land
description: A skill for building reliable web applications using the Elm Land framework.
license: MIT
metadata:
  author: Elm Land Team
  version: "1.0"
  compatibility: Requires Node.js (v18.16.0+), elm-land CLI
---

# Elm Land Skill

This skill provides Junie with the knowledge to build, maintain, and scale Elm applications using the [Elm Land](https://elm.land) framework.

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
- **Use Checklists**: Refer to `checklists/development.md` for step-by-step guides on common tasks.
- **Check Documentation**: For deep dives into specific topics (Auth, JS Interop, Deployment), refer to the files in the `elm-land/docs` directory within this skill.

## Reference Materials

Detailed documentation and examples are available in the `elm-land` directory:
- [Concepts](elm-land/docs/concepts)
- [Guides](elm-land/docs/guide)
- [API Reference](elm-land/docs/reference)
- [Official Examples](elm-land/examples): 20 examples covering everything from Hello World to Auth and TailwindCSS.
