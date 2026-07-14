#!/bin/bash

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js v18.16.0 or higher."
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d 'v' -f 2)
MAJOR_VERSION=$(echo $NODE_VERSION | cut -d '.' -f 1)
MINOR_VERSION=$(echo $NODE_VERSION | cut -d '.' -f 2)

if [ "$MAJOR_VERSION" -lt 18 ]; then
    echo "❌ Node.js version $NODE_VERSION is too old. Please use v18.16.0 or higher."
    exit 1
fi

# Check if elm-land CLI is installed
if ! command -v elm-land &> /dev/null; then
    echo "⚠️ elm-land CLI is not installed globally."
    echo "You can install it with: npm install -g elm-land@latest"
    
    # Check if it's in a local node_modules
    if [ -f "./node_modules/.bin/elm-land" ]; then
        echo "✅ Found local elm-land at ./node_modules/.bin/elm-land"
    else
        exit 1
    fi
else
    echo "✅ elm-land CLI is installed: $(elm-land --version)"
fi

echo "✅ Environment is ready for Elm Land development."
exit 0
