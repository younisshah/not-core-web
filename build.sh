#!/bin/bash

if [[ -z "${PREVIOUS_SUCCESSFUL_COMMIT}" ]]; then
  PREVIOUS_SUCCESSFUL_COMMIT="HEAD~1"
else
  PREVIOUS_SUCCESSFUL_COMMIT="${PREVIOUS_SUCCESSFUL_COMMIT}"
fi

echo "[build]: PREVIOUS_SUCCESSFUL_COMMIT: ${PREVIOUS_SUCCESSFUL_COMMIT}";

npx nx affected --targets=install:ci,build --base="$PREVIOUS_SUCCESSFUL_COMMIT" --head=HEAD

node ./ci/publish_apps.js
