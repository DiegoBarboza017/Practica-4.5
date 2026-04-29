# Cableado y uso de GPIO (Raspberry Pi Pico W)

## Suposiciones y alcance
- El cableado se documenta a partir del `diagram.json` proporcionado.
- Se asume GND común para todos los LEDs y teclado.
- Se respetan exactamente los arreglos del firmware (`ledPins`, `rowPins`, `colPins`).

## Tabla de mapeo del teclado 4x4
| Señal keypad | GPIO Pico W | Uso en firmware |
|---|---:|---|
| C4 | GP16 | `colPins[3]` |
| C3 | GP17 | `colPins[2]` |
| C2 | GP18 | `colPins[1]` |
| C1 | GP19 | `colPins[0]` |
| R4 | GP20 | `rowPins[3]` |
| R3 | GP21 | `rowPins[2]` |
| R2 | GP22 | `rowPins[1]` |
| R1 | GP26 | `rowPins[0]` |

## Pull-up de filas del teclado
| Resistor | Valor | Conexión |
|---|---:|---|
| rp1 | 1kΩ | R1 a 3V3 |
| rp2 | 1kΩ | R2 a 3V3 |
| rp4 | 1kΩ | R3 a 3V3 |
| rp3 | 1kΩ | R4 a 3V3 |

## Tabla de LEDs controlados
| LED lógico | GPIO Pico W | Serie | Acción por tecla |
|---|---:|---:|---|
| LED1 | GP11 | 220Ω | `1` enciende |
| LED2 | GP10 | 220Ω | `2` enciende |
| LED3 | GP9  | 220Ω | `3` enciende |
| LED4 | GP8  | 220Ω | `4` enciende |
| LED5 | GP7  | 220Ω | `5` enciende |
| LED6 | GP6  | 220Ω | `6` enciende |
| LED7 | GP5  | 220Ω | `7` enciende |
| LED8 | GP4  | 220Ω | `8` enciende |
| LED9 (A)  | GP3  | 220Ω | `A` enciende |
| LED10 (B) | GP2  | 220Ω | `B` enciende |
| LED11 (C) | GP28 | 220Ω | `C` enciende |
| LED12 (D) | GP27 | 220Ω | `D` enciende |

## GND y alimentación
- Cátodo de todos los LEDs a GND (`pico:GND.4` en el diagrama).
- Pull-up de filas a `3V3`.
- No usar 5V directo en GPIO del RP2040.

## Verificación rápida de cableado
1. Encender placa/simulación.
2. Presionar `1..8` y confirmar LED correspondiente.
3. Presionar `9` y `0` para bloque azul.
4. Presionar `A..D`, luego `*` y `#` para bloque rojo.
