# Arquitectura del firmware

## Objetivo funcional
Controlar 12 salidas de LED con un keypad matricial 4x4 usando eventos de tecla.

## Estructura de código
El firmware está contenido en `src/main.cpp` y se organiza en:

1. **Constantes de dimensión**
   - `LEDS`, `ROWS`, `COLS`.
2. **Mapeo de teclas**
   - Matriz `keys[4][4]` con `1..9`, `0`, `A..D`, `*`, `#`.
3. **Asignación de pines**
   - `ledPins[]`, `rowPins[]`, `colPins[]`.
4. **Inicialización (`setup`)**
   - Configura LEDs como salida y estado inicial en LOW.
5. **Lazo principal (`loop`)**
   - Lee tecla con `keypad.getKey()`.
   - Evalúa `switch-case` por tecla.
   - Ejecuta encendido/apagado individual o en bloque.
   - Retardo de 10 ms para estabilidad básica.

## Módulos/librerías
- `Keypad.h`: lectura del keypad matricial y de-bounce básico.
- API estilo Arduino: `pinMode`, `digitalWrite`, `delay`.

## Comportamiento preservado (sin cambios de lógica)
- No se alteró el mapeo de teclas.
- No se alteró el orden de `ledPins`.
- No se agregaron nuevas transiciones de estado.
- No se implementó Wi-Fi ni cambios de temporización.

## Consideraciones de portabilidad
- El código actual está en estilo Arduino.
- Para Pico SDK puro, se requiere adaptar:
  - Inicialización de GPIO.
  - Escaneo del teclado (o librería compatible).
  - Bucle principal con temporización equivalente.

## Pruebas sugeridas
- Prueba funcional por tecla (16 teclas).
- Prueba de bloques: `9/0` y `*/#`.
- Prueba de rebotes: pulsaciones rápidas consecutivas.
