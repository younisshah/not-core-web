#!/bin/sh

echo "[build]: PREVIOUS_SUCCESSFUL_COMMIT: ${PREVIOUS_SUCCESSFUL_COMMIT}";

npx nx affected --targets=install:ci,build --base="$PREVIOUS_SUCCESSFUL_COMMIT" --head=HEAD

node ./ci/publish_apps.js
