# Official Examples

These examples demonstrate common patterns and integrations in Elm Land. You can find the full source code for these in the [official Elm Land repository](https://github.com/elm-land/elm-land/tree/main/examples).

| Example | Description |
| :--- | :--- |
| **01-hello-world** | The simplest possible Elm Land app. |
| **02-pages-and-routes** | How to use static and dynamic routing. |
| **03-user-input** | Handling forms and user interaction. |
| **04-rest-apis** | Fetching data from an external API. |
| **05-user-auth** | A complete sign-in/sign-out flow. |
| **06-query-parameters** | Using `?search=...` in your URLs. |
| **07-working-with-js** | Using flags and ports to talk to JavaScript. |
| **08-nested-layouts** | Composing multiple layouts together. |
| **09-catch-all-routes** | Handling 404 pages with `ALL_.elm`. |
| **10-typescript-interop** | Using TypeScript instead of JavaScript for interop. |
| **12-elm-ui** | Using the `elm-ui` package for layout and styling. |
| **13-elm-css** | Using `elm-css` for type-safe CSS. |
| **14-scss-and-assets** | Using SCSS and importing images/fonts. |
| **19-tailwindcss** | Integrating Tailwind CSS into your project. |
| **20-auth-error-page** | Customizing the view shown when a user is not authorized. |

## Key Patterns to Look For

- **Auth Redirection**: See `05-user-auth` for how to use `Auth.Action` to protect routes.
- **JS Bridge**: See `07-working-with-js` for the `src/interop.js` pattern.
- **Dynamic Routes**: See `02-pages-and-routes` for how to use underscore naming (e.g., `User_.elm`).
