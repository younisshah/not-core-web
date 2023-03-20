#!/bin/sh

PREVIOUS_SUCCESSFUL_COMMIT=${PREVIOUS_SUCCESSFUL_COMMIT:-"HEAD~1"}
echo "[affected]: PREVIOUS_SUCCESSFUL_COMMIT: ${PREVIOUS_SUCCESSFUL_COMMIT}";

npx nx print-affected --targets=install:ci,build --base="$PREVIOUS_SUCCESSFUL_COMMIT" --head=HEAD --select=projects
