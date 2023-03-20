#!/bin/sh

echo "[affected]: PREVIOUS_SUCCESSFUL_COMMIT: ${PREVIOUS_SUCCESSFUL_COMMIT:-HEAD~1}";

npx nx print-affected --targets=install:ci,build --base="$PREVIOUS_SUCCESSFUL_COMMIT" --head=HEAD --select=projects
