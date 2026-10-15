#!/usr/bin/env bash
# Reproduces every output quoted in the article.
# Needs Node 24+ (npx aontu@0.76.0) and, for the comparison, CUE 0.17.1.
cd "$(dirname "$0")"
a() { echo "\$ aontu $1"; npx -y aontu@0.76.0 "$1" 2>&1 | head -12; echo; }
a port.aontu
a port-80.aontu
a ranked-defaults.aontu
a default-clash.aontu
a bare-default-string.aontu
a bare-default-float.aontu
a include-old-extension.aontu
a include/last.aontu
a include/first.aontu
a include/undefined.aontu
if command -v cue >/dev/null; then
  echo '$ cue export cue/default-clash.cue'; cue export cue/default-clash.cue 2>&1; echo
fi
