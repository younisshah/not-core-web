#!/bin/sh

echo "[build]: PREVIOUS_SUCCESSFUL_COMMIT: ${PREVIOUS_SUCCESSFUL_COMMIT:-HEAD~1}";

npx nx affected --targets=install:ci,build --base="$PREVIOUS_SUCCESSFUL_COMMIT" --head=HEAD

node ./ci/publish_apps.js
