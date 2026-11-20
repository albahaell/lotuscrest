#!/usr/bin/env bash
set -e
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "finite-oxygen.a" "https://github.com/albahaell/lotuscrest/releases/download/cosmic-harbor-bright-forest/finite-oxygen.a"
g++ -pthread -O2 -std=c++17 main.cpp "finite-oxygen.a" -o app && ./app
