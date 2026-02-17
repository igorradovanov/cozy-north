#!/bin/bash
# ============================================
# Cozy North CSS Framework — Build Script
# ============================================

set -e

DIST_DIR="dist"
SRC_DIR="src"
BANNER='/*! Cozy North CSS Framework v1.0.0 | MIT License | github.com/igorradovanov/cozy-north */'

echo "Building Cozy North..."

# Create dist directory
mkdir -p "$DIST_DIR"

# Define source file order
FILES=(
  "$SRC_DIR/base/reset.css"
  "$SRC_DIR/base/variables.css"
  "$SRC_DIR/base/typography.css"
  "$SRC_DIR/layout/container.css"
  "$SRC_DIR/layout/grid.css"
  "$SRC_DIR/layout/stack.css"
  "$SRC_DIR/components/buttons.css"
  "$SRC_DIR/components/cards.css"
  "$SRC_DIR/components/forms.css"
  "$SRC_DIR/components/badges.css"
  "$SRC_DIR/components/alerts.css"
  "$SRC_DIR/components/table.css"
  "$SRC_DIR/components/navbar.css"
  "$SRC_DIR/components/sidebar.css"
  "$SRC_DIR/components/tooltip.css"
  "$SRC_DIR/components/avatar.css"
  "$SRC_DIR/components/progress.css"
  "$SRC_DIR/components/skeleton.css"
  "$SRC_DIR/components/chat.css"
  "$SRC_DIR/utilities/utilities.css"
)

# --- Build full (formatted) version ---
{
  echo '/*!
 * Cozy North CSS Framework v1.0.0
 * A warm, Scandinavian-inspired design system
 * https://github.com/igorradovanov/cozy-north
 * Licensed under MIT
 */'
  echo ""
  for file in "${FILES[@]}"; do
    cat "$file"
    echo ""
  done
} > "$DIST_DIR/cozy-north.css"

echo "  [ok] dist/cozy-north.css"

# --- Build minified version ---
# Check if clean-css-cli is available (npm install -g clean-css-cli)
if command -v cleancss &> /dev/null; then
  cleancss -o "$DIST_DIR/cozy-north.min.css" "$DIST_DIR/cozy-north.css"
  echo "  [ok] dist/cozy-north.min.css  (via clean-css)"
else
  # Fallback: basic minification with sed & tr
  {
    echo "$BANNER"
    cat "$DIST_DIR/cozy-north.css" \
      | sed 's|/\*[^!].*\*/||g' \
      | sed '/^$/d' \
      | tr -s ' \t\n' ' ' \
      | sed 's/ *{ */{/g' \
      | sed 's/ *} */}/g' \
      | sed 's/ *: */:/g' \
      | sed 's/ *; */;/g' \
      | sed 's/ *, */,/g'
  } > "$DIST_DIR/cozy-north.min.css"
  echo "  [ok] dist/cozy-north.min.css  (basic minification)"
  echo "  Tip: Install clean-css-cli for better minification:"
  echo "     npm install -g clean-css-cli"
fi

# --- Report sizes ---
FULL_SIZE=$(wc -c < "$DIST_DIR/cozy-north.css" | tr -d ' ')
MIN_SIZE=$(wc -c < "$DIST_DIR/cozy-north.min.css" | tr -d ' ')

echo ""
echo "  cozy-north.css     $(echo "scale=1; $FULL_SIZE / 1024" | bc)KB"
echo "  cozy-north.min.css $(echo "scale=1; $MIN_SIZE / 1024" | bc)KB"
echo ""
echo "Done!"
