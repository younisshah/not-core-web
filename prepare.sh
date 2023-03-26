#!/bin/sh

echo "[prepare]: PREVIOUS_SUCCESSFUL_COMMIT: ${PREVIOUS_SUCCESSFUL_COMMIT}";

NODE_OPTIONS=--max_old_space_size=8192 npx lerna bootstrap --hoist
