#!/bin/bash
cd /app/frontend
npm install -D tailwindcss postcss autoprefixer svelte-preprocess
/app/frontend/node_modules/.bin/tailwindcss init -p
