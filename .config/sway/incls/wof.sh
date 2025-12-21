#!/bin/bash

set -euo pipefail  # Строгий режим: прерывать при ошибках

pkill wofi 2>/dev/null || true

exec wofi --show drun --columns 1
