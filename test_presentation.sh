#!/bin/bash

# Test Quarto presentation structure
HTML_FILE="/Users/halis.yilboga/developer/ws/deneme/presentation.html"

echo "=== PRESENTATION STRUCTURE TEST ==="
echo ""
echo "Total <section> tags: $(grep -o '<section' "$HTML_FILE" | wc -l | tr -d ' ')"
echo ""

echo "=== SECTION HIERARCHY ==="
grep -n '<section' "$HTML_FILE" | head -20

echo ""
echo "=== NESTED SECTIONS (problematic) ==="
grep -B2 -A2 '<section.*<section' "$HTML_FILE" || echo "None found (good!)"

echo ""
echo "=== CHECKING FOR REVEAL SECTIONS ==="
grep 'class="reveal"' "$HTML_FILE" | head -5
