#!/bin/sh

#if [ -z "${PREVIOUS_SUCCESSFUL_COMMIT}" ] || [ "${PREVIOUS_SUCCESSFUL_COMMIT}" = "null" ]; then
#  echo "[affected]: PREVIOUS_SUCCESSFUL_COMMIT is empty, using HEAD~1"
#  PREVIOUS_SUCCESSFUL_COMMIT="HEAD~1"
#else
#  echo "[affected]: PREVIOUS_SUCCESSFUL_COMMIT is not empty, using ${PREVIOUS_SUCCESSFUL_COMMIT}"
#  PREVIOUS_SUCCESSFUL_COMMIT="${PREVIOUS_SUCCESSFUL_COMMIT}"
#fi


echo "[affected]: PREVIOUS_SUCCESSFUL_COMMIT: ${PREVIOUS_SUCCESSFUL_COMMIT}";

npx nx print-affected --target=build --base="$PREVIOUS_SUCCESSFUL_COMMIT" --head=HEAD --select=projects
