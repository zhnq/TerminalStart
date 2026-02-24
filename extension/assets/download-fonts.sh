#!/bin/bash
curl -s "https://api.github.com/repos/TheCSir/TerminalStart/contents/extension/assets" | grep -o '"name":"[^"]*\.ttf"' | cut -d'"' -f4 | while read font; do
  echo "Downloading $font..."
  curl -L -s "https://raw.githubusercontent.com/TheCSir/TerminalStart/main/extension/assets/$font" -o "$font"
done
curl -s "https://api.github.com/repos/TheCSir/TerminalStart/contents/extension/assets" | grep -o '"name":"[^"]*\.woff2"' | cut -d'"' -f4 | while read font; do
  echo "Downloading $font..."
  curl -L -s "https://raw.githubusercontent.com/TheCSir/TerminalStart/main/extension/assets/$font" -o "$font"
done
curl -s "https://api.github.com/repos/TheCSir/TerminalStart/contents/extension/assets" | grep -o '"name":"[^"]*\.woff"' | cut -d'"' -f4 | while read font; do
  echo "Downloading $font..."
  curl -L -s "https://raw.githubusercontent.com/TheCSir/TerminalStart/main/extension/assets/$font" -o "$font"
done
echo "Done!"
