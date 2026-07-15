# Elm Land Development Checklist

## Adding a New Page
- [ ] Inspect the relevant existing pages and confirm the installed CLI supports the requested page type.
- [ ] Choose the correct page type (`view`, `sandbox`, `element`).
- [ ] Run `elm-land add page:<type> <url>`.
- [ ] Verify the new file is created in `src/Pages/`.
- [ ] If the route is dynamic, ensure the filename ends with an underscore (e.g., `User_.elm`).
- [ ] (Optional) Add a layout using `Page.withLayout`.
- [ ] Run `elm-land build`; start the server only when browser verification is needed.

## Adding a Layout
- [ ] Run `elm-land add layout <name>`.
- [ ] Customize the layout in `src/Layouts/<Name>.elm`.
- [ ] Apply the layout to pages using `Page.withLayout`.

## Preparing for Production
- [ ] Run `elm-land build` to ensure the project compiles.
- [ ] Verify that environment variables are configured in the deployment environment and exposed to `src/interop.js` only when intended.
- [ ] Check `references/deployment.md` for deployment-specific steps (Netlify, Vercel, etc.).
