#!/bin/sh

echo "[build]: PREVIOUS_SUCCESSFUL_COMMIT: ${PREVIOUS_SUCCESSFUL_COMMIT}";

affected_widgets=$(npx nx print-affected --base="$PREVIOUS_SUCCESSFUL_COMMIT" --head=HEAD --target=build --select=projects)

if [ -z "$affected_widgets" ]; then
    echo "[build]: No affected widgets"
    echo "[build]: Building lib..."
    npx nx run lib:build
else
    echo "[build]: Affected widgets: $affected_widgets"
fi


npx nx affected --target=build --base="$PREVIOUS_SUCCESSFUL_COMMIT" --head=HEAD
node ./ci/publish_apps.js
