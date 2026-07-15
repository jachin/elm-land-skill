# JavaScript Interoperability

Elm Land uses `src/interop.js` as the bridge between Elm and JavaScript.

## `src/interop.js` Structure

This file exports two main functions:

```javascript
// Called BEFORE the Elm app starts
export const flags = ({ env }) => {
  return {
    // Data returned here is passed to Shared.init
  }
}

// Called AFTER the Elm app starts
export const onReady = ({ app, env }) => {
  // app.ports.myPort.subscribe(...)
  // app.ports.myPort.send(...)
}
```

## Flags

Flags allow you to pass initial data into your Elm application (e.g., from `localStorage` or environment variables).

### 1. JavaScript Side
Return an object from the `flags` function in `src/interop.js`.

### 2. Elm Side
Customize `Shared.elm` using `elm-land customize shared` and update the `Flags` type and `decoder`:

```elm
type alias Flags =
    { userToken : Maybe String }

decoder : Json.Decode.Decoder Flags
decoder =
    Json.Decode.map Flags
        (Json.Decode.field "userToken" (Json.Decode.nullable Json.Decode.string))
```

## Ports

Ports allow Elm and JS to send messages to each other.

### 1. Defining Ports
Create a "port module" in `src/` (e.g., `src/Ports.elm`):

```elm
port module Ports exposing (log, onMessage)

port log : String -> Cmd msg
port onMessage : (String -> msg) -> Sub msg
```

### 2. JavaScript Side
Use `app.ports` in the `onReady` function in `src/interop.js`.

```javascript
export const onReady = ({ app, env }) => {
  app.ports.log.subscribe(message => {
    console.log(message)
  })
}
```

## Environment Variables

Elm Land automatically makes environment variables available in `interop.js` via the `env` object. 

To use them in Elm, pass them through **Flags**.

- **Local Development**: Define variables in a `.env` file.
- **Production**: Set them in your hosting provider (Netlify, Vercel, etc.).
