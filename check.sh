#!/bin/sh
# Validates msx/start.json and checks that every portal and Lampa plugin still responds.
set -e
cd "$(dirname "$0")"

python3 -m json.tool msx/start.json > /dev/null
echo "ok   msx/start.json is valid JSON"

urls=$(grep -ohE "https?://[^\"']+" msx/start.json lampa/plugins.js)
failed=0
for url in $urls; do
    status=$(curl -sL -m 10 -o /dev/null -w '%{http_code}' "$url" || true)
    if [ "$status" = "200" ]; then
        echo "ok   $url"
    else
        echo "FAIL $status $url"
        failed=1
    fi
done
exit $failed
