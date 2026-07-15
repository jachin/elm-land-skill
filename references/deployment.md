# Deployment

Elm Land apps are compiled as single-page applications (SPAs). All URL requests must be redirected to `dist/index.html`.

## Building for Production

Run the build command to optimize and minify your application:

```bash
elm-land build
```

The output will be in the `dist/` directory.

## Hosting Providers

### Netlify

Create a `netlify.toml` file at your project root:

```toml
[build]
  command = "npx elm-land build"
  publish = "dist"

[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200
```

### Vercel

Create a `vercel.json` file at your project root:

```json
{
  "buildCommand": "npx elm-land build",
  "outputDirectory": "dist",
  "rewrites": [
    { "source": "/(.*)", "destination": "/" }
  ]
}
```

### Static Hosting (GitHub Pages, etc.)

If your provider doesn't support SPA redirects, you may need a custom 404 handler that redirects back to `index.html` or use hash-based routing by updating `elm-land.json`.
