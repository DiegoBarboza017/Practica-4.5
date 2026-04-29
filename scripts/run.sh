#!/usr/bin/env bash
set -euo pipefail

echo "[INFO] Iniciando script de ejecución local..."

# Este script es una plantilla base.
# Adáptalo según el lenguaje elegido para tu proyecto.

if [[ -f "src/main.py" ]]; then
  echo "[INFO] Se detectó src/main.py"
  echo "[INFO] Ejecutando con Python..."
  python3 src/main.py
elif [[ -f "src/main.c" ]]; then
  echo "[INFO] Se detectó src/main.c"
  echo "[INFO] Compilando y ejecutando ejemplo en C..."
  cc src/main.c -o /tmp/main_c
  /tmp/main_c
elif [[ -f "src/main.s" ]] || [[ -f "src/main.S" ]]; then
  echo "[INFO] Se detectó archivo Assembly en src/"
  echo "[INFO] Ajusta aquí los comandos mínimos de ensamblado/enlace para tu entorno ARM64."
elif [[ -f "src/main.sh" ]]; then
  echo "[INFO] Se detectó src/main.sh"
  echo "[INFO] Ejecutando script Bash..."
  bash src/main.sh
else
  echo "[ERROR] No se encontró archivo principal en src/."
  echo "[SUGERENCIA] Crea uno de estos archivos:"
  echo "  - src/main.py"
  echo "  - src/main.c"
  echo "  - src/main.s o src/main.S"
  echo "  - src/main.sh"
  exit 1
fi

echo "[INFO] Ejecución finalizada."
