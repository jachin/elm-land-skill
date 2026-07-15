# Effects

In Elm Land, `Effect msg` is an abstraction over Elm's standard `Cmd msg`. It allows you to describe side-effects (like HTTP requests or navigation) in a way that is easier to test and manage.

## Common Effects

### Navigation
- `Effect.pushRoutePath Route.Path.Home_`: Navigate to the homepage.
- `Effect.replaceRoute { path = Route.Path.SignIn, ... }`: Replace the current URL.
- `Effect.loadExternalUrl "https://google.com"`: Navigate to an external website.

### Basic
- `Effect.none`: Do nothing.
- `Effect.batch (List (Effect msg))`: Run multiple effects at once.
- `Effect.sendCmd (Cmd msg)`: Convert a standard Elm `Cmd` into an `Effect`.
- `Effect.sendMsg msg`: Send a message to your own `update` function.

## Custom Effects

For production apps, it's recommended to define custom effects in the `Effect` module.

1. **Customize the module**:
   ```bash
   elm-land customize effect
   ```

2. **Define a new effect** in `src/Effect.elm`:
   ```elm
   type Effect msg
       = None
       | Batch (List (Effect msg))
       | PushUrl String
       | FetchUser (Result Http.Error User -> msg) -- New custom effect
   ```

3. **Handle the effect** in the `toCmd` function:
   ```elm
   toCmd : { ... } -> Effect msg -> Cmd msg
   toCmd options effect =
       case effect of
           FetchUser toMsg ->
               Http.get { url = "...", expect = Http.expectJson toMsg userDecoder }
           ...
   ```

4. **Use it in a page**:
   ```elm
   update : Msg -> Model -> ( Model, Effect Msg )
   update msg model =
       case msg of
           ClickedFetchUser ->
               ( model, Effect.fetchUser UserReceived )
   ```
