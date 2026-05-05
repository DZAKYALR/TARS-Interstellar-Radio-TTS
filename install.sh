#!/usr/bin/env bash
set -euo pipefail

echo "[TARS TTS] Installing system dependencies..."
sudo apt update
sudo apt install -y espeak-ng sox wget tar

echo "[TARS TTS] Checking Piper binary..."
if [ ! -x "./bin/piper/piper" ]; then
  echo "Piper binary not found at ./bin/piper/piper"
  echo "Please make sure the repository includes bin/piper/"
  exit 1
fi

chmod +x ./bin/speak

echo "[TARS TTS] Testing voice..."
./bin/speak "TARS voice system is online." tars-v3 5 clear

echo "[TARS TTS] Done."
