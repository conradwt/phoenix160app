#!/usr/bin/env bash

# Set environment variables.
export SECRET_KEY_BASE="D2xWV8FX+bmr0B1U4PuOPcOMry5Q/ouH8LAz6R/dVTAKV2T/NtQTyT+tQ4kL+SnK"
export DATABASE_URL="ecto://postgres:password@localhost:5432/phoenix160app_prod"

# Exit on error
set -o errexit

# Initial setup
mix deps.get --only prod
MIX_ENV=prod mix compile

# Compile assets
MIX_ENV=prod mix assets.deploy

# Build the release and overwrite the existing release directory
MIX_ENV=prod mix release --overwrite
