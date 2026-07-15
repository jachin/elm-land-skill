# User Authentication

Elm Land provides a built-in way to handle user sessions and protected routes.

## Protecting Pages

To protect a page (make it only accessible to signed-in users), customize the `Auth.elm` file:

```bash
elm-land customize auth
```

In `src/Auth.elm`, you define `onPageLoad`, which decides what happens when a user visits a page:

```elm
onPageLoad : Shared.Model -> Route () -> Auth.Action.Action
onPageLoad shared route =
    case shared.user of
        Just user ->
            Auth.Action.loadPageWithUser user

        Nothing ->
            Auth.Action.replaceRoute
                { path = Route.Path.SignIn
                , query = Dict.fromList [ ( "from", route.url.path ) ]
                , hash = Nothing
                }
```

## Accessing the User in a Page

If `onPageLoad` returns `Auth.Action.loadPageWithUser user`, the user will be passed to your page's `init` and `update` functions.

```elm
page : Shared.Model -> Route () -> Auth.User -> Page Model Msg
page shared route user =
    -- Your page logic now has access to `user`
```

## Shared State

User authentication data is typically stored in `src/Shared.elm`.

1. **Model**: Add a `user : Maybe User` field.
2. **Init**: Initialize the user from **Flags** (if available) or start with `Nothing`.
3. **Update**: Add messages to sign in/out and update the `user` field.

## Redirecting after Sign-In

When a user successfully signs in on the `/sign-in` page, you can use the `from` query parameter to send them back to where they were:

```elm
case Dict.get "from" route.query of
    Just path ->
        Effect.pushRoutePath (Route.Path.fromString path)

    Nothing ->
        Effect.pushRoutePath Route.Path.Home_
```
