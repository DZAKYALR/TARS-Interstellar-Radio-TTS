````bash
cd ~/tars-lab

cat > README.md <<'EOF'
# TARS Interstellar Radio TTS

Local TARS-style Text-to-Speech playground using Piper TTS, ONNX voice models, and SoX post-processing.

This repo is **TTS-only** for now.

## Features

- Local CPU TTS using Piper
- TARS V2 and V3 ONNX voice models
- Simple `bin/speak` command
- Voice styles: `normal`, `clear`, `deep`, `heavy`, `fast`, `radio`

## Requirements

Tested on Pop!_OS / Ubuntu Linux.

```bash
sudo apt update
sudo apt install -y espeak-ng sox wget tar
````

## Usage

```bash
./bin/speak "Hello Romeo. I am TARS. My sarcasm setting is seventy five percent." tars-v3 5 clear
```

Arguments:

```text
./bin/speak "TEXT" VOICE SPEAKER STYLE
```

Example:

```bash
./bin/speak "Security protocol online. Perimeter scan complete." tars-v3 5 radio
```

## Voices

```text
models/tars-v2/TARS.onnx
models/tars-v3/TARS.onnx
```

## TARS V3 speaker IDs

```text
0 = anger
1 = curiosity
2 = fear
3 = joy
4 = love
5 = neutral
6 = sadness
7 = surprise
```

Note: these are subtle style IDs, not dramatic acting emotions.

## Attribution

This project uses / references voice model assets from:

* TARS-AI Community project: [https://github.com/TARS-AI-Community/TARS-AI](https://github.com/TARS-AI-Community/TARS-AI)
* Older fork used for V2 voice asset: [https://github.com/DZAKYALR/TARS-AI](https://github.com/DZAKYALR/TARS-AI)
* Piper TTS: [https://github.com/rhasspy/piper](https://github.com/rhasspy/piper)

The upstream TARS-AI project is licensed under Creative Commons Attribution-NonCommercial 4.0 International.

This repo is intended for personal, educational, and experimental use only.

TARS and Interstellar belong to their respective rights holders. This is a fan/experimental local TTS playground and is not affiliated with the film or rights holders.
EOF

```
```
