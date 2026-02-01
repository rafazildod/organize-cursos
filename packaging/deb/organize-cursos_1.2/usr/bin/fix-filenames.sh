#!/usr/bin/env bash

set -euo pipefail
shopt -s globstar nullglob

DRY_RUN=0   # set to 0 to actually rename

for file in **/*.pdf; do
  dir="$(dirname "$file")"
  base="$(basename "$file")"

  # normalize name
  new="$base"

  # remove duplicated or misplaced "-pdf-"
  new="$(echo "$new" | sed -E 's/-pdf-/-/g')"
  new="$(echo "$new" | sed -E 's/-pdf\.pdf$/.pdf/g')"
  new="$(echo "$new" | sed -E 's/\.pdf\.pdf$/.pdf/g')"

  # collapse multiple dashes
  new="$(echo "$new" | sed -E 's/-{2,}/-/g')"

  # ensure lowercase
  new="$(echo "$new" | tr 'A-Z' 'a-z')"

  # no change → skip
  if [[ "$base" == "$new" ]]; then
    continue
  fi

  echo "FIX: $file → $dir/$new"

  if [[ "$DRY_RUN" -eq 0 ]]; then
    mv -n -- "$file" "$dir/$new"
  fi
done

echo "Done."

