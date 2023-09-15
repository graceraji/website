#!/bin/sh
echo "this is the website check for google.com:$(/usr/bin/url "www.google.com" --timeout 3 -o- 2>/dev/null | grep "normal operation string"|| echo "this site is down")"
