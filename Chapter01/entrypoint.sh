#!/usr/bin/env bash
# Exit immediately if any command fails
set -e

# FIX: cowsay runs first to build the art, lolcat runs last to apply color
env fortune -a | env cowsay | env lolcat --force

# Let the container pass control to any extra arguments if needed
exec "$@"
