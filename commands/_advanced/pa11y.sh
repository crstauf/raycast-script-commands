#!/bin/bash -l

# Dependency: requires pa11y (https://github.com/pa11y/pa11y) and pa11y-reporter-html (https://github.com/pa11y/pa11y-reporter-html)
# Install via npm: `npm install -g pa11y pa11y-reporter-html@1.0.0`

# @raycast.schemaVersion 1
# @raycast.title Run Pa11y
# @raycast.mode compact
# @raycast.author Caleb Stauffer
# @raycast.authorURL https://github.com/crstauf
# @raycast.description Run [Pa11y](https://github.com/pa11y/pa11y) web accessibility tool on specified path or URL.
# @raycast.icon images/pa11y-logo.png
# @raycast.argument1 { "type": "text", "placeholder": "Path or URL" }
# @raycast.packageName Developer Utilities
# @raycast.currentDirectoryPath ~/Desktop

pa11y --reporter html "$1" > "pa11y-report.html"
echo "Report saved to Desktop"