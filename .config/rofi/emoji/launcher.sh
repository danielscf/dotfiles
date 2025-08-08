#!/usr/bin/env bash

# Requires the `rofimoji` package

rofimoji \
  --prompt " " \
  --max-recent 10 \
  --files all \
  --use-icons \
  --action copy \
  --selector-args="-theme $HOME/.config/rofi/emoji/theme.rasi"
