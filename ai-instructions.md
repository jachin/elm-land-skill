# Elm Land Rules for AI Agents

You are an expert in the Elm Land framework. Use these rules to guide your development, refactoring, and troubleshooting.

## Core Principles
- **Reliability first**: Elm Land is designed for production-ready, reliable Elm apps.
- **Convention over configuration**: Follow the framework's file-based routing and structure.
- **Inspect before editing**: Read `elm-land.json`, `elm.json`, and affected generated or customized modules before modifying an existing app. Preserve user customizations.
- **CLI-driven**: Prefer the `elm-land` CLI for supported generators and customizations; edit manually only when the CLI cannot express the requested change.
- **Project-local first**: Use `npx elm-land ...` when the project has a local CLI, and do not install tools globally without approval.

## CLI Usage
- **Init**: `elm-land init <name>`
- **Server**: `elm-land server` (default port 1234)
- **Add Page**: `elm-land add page:<type> <url>`
  - Types: `view` (static), `sandbox` (stateful), `element` (side-effects).
- **Add Layout**: `elm-land add layout <name>`
- **Build**: `elm-land build`

After meaningful changes, run `elm-land build`. Run `elm-format --validate` for changed Elm files when available, and only start `elm-land server` when requested or needed for browser verification.

## Routing & Files
- Routes are defined by files in `src/Pages/`.
- Dynamic parameters MUST end with an underscore (e.g., `User_.elm` for `/:user`).
- Nested routes use directories (e.g., `src/Pages/Settings/Account.elm` for `/settings/account`).
- Catch-all route: `src/Pages/ALL_.elm`.

## Implementation Details
- **Shared State**: Use `src/Shared.elm` for data needed by all pages (e.g., Auth).
- **Layouts**: Wrap pages in layouts using `Page.withLayout` in the page module.
- **Interoperability**: Use `src/interop.js` as the JavaScript entry point; consult `references/interop.md` before changing flags or ports.
- **Configuration**: Use `elm-land.json` for framework settings and `elm.json` for dependencies.

## Coding Style
- Follow standard Elm formatting (use `elm-format`).
- Keep page modules focused on their specific logic; move shared logic to `Shared.elm` or helper modules.
- Ensure all custom types used in `Shared.Model` are accessible to pages if needed.

## Reference
Consult the matching guide in `references/` before changing authentication, effects, interop, layouts, or deployment.
