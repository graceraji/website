#!/bin/sh
echo "this is random password display:$(date +%s | sha256sum | base64 | head -c 32 ;echo)"
