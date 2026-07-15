# Layouts

Layouts allow your pages to reuse stateful UI like sidebars, navbars, and footers.

## Creating a Layout

Use the CLI to generate a new layout:

```bash
elm-land add layout Sidebar
```

This creates `src/Layouts/Sidebar.elm`. Layouts have their own `init`, `update`, and `view`, similar to pages.

## Using a Layout on a Page

To use a layout, update your page's `page` function in `src/Pages/*.elm`:

```elm
page : Shared.Model -> Route () -> Page Model Msg
page shared route =
    Page.new
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }
        |> Page.withLayout toLayout

toLayout : Model -> Layouts.Layout Msg
toLayout model =
    Layouts.Sidebar
        { -- Pass properties (Props) to the layout here
        }
```

## Layout Props

You can pass data from a page to its layout using `Props`. Define the `Props` type alias in your layout file:

```elm
-- src/Layouts/Sidebar.elm
type alias Props =
    { title : String
    }
```

Then pass that data from the page:

```elm
-- src/Pages/Dashboard.elm
toLayout : Model -> Layouts.Layout Msg
toLayout model =
    Layouts.Sidebar
        { title = "Dashboard"
        }
```

## Nested Layouts

You can wrap one layout in another by using `Layout.withLayout` inside the layout's `layout` function, or by composing them in the page.
