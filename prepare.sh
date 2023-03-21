#!/bin/sh

npm install -g lerna@6.5.1 nx@15.8.7

NODE_OPTIONS=--max_old_space_size=8192 lerna bootstrap --hoist
