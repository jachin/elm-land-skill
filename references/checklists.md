# Elm Land Development Checklist

## Adding a New Page
- [ ] Choose the correct page type (`view`, `sandbox`, `element`).
- [ ] Run `elm-land add page:<type> <url>`.
- [ ] Verify the new file is created in `src/Pages/`.
- [ ] If the route is dynamic, ensure the filename ends with an underscore (e.g., `User_.elm`).
- [ ] (Optional) Add a layout using `Page.withLayout`.
- [ ] Start the server with `elm-land server` and verify the page loads.

## Adding a Layout
- [ ] Run `elm-land add layout <name>`.
- [ ] Customize the layout in `src/Layouts/<Name>.elm`.
- [ ] Apply the layout to pages using `Page.withLayout`.

## Preparing for Production
- [ ] Run `elm-land build` to ensure the project compiles.
- [ ] Verify that environment variables are correctly set in `elm-land.json` (if applicable).
- [ ] Check `references/deployment.md` for deployment-specific steps (Netlify, Vercel, etc.).
