#!/bin/sh

echo "[prepare] WHAT IS FOOBAR: $(env.FOO_BAR)"

NODE_OPTIONS=--max_old_space_size=8192 npx lerna bootstrap --hoist
