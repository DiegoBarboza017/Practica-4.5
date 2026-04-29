# Control de 12 LEDs con teclado 4x4 en Raspberry Pi Pico W

Proyecto para Raspberry Pi Pico W (RP2040) donde un teclado matricial 4x4 controla 12 LEDs mediante un mapeo directo de teclas a salidas GPIO.

## Resumen del proyecto
- **Plataforma objetivo:** Raspberry Pi Pico W.
- **Firmware base recibido:** C/C++ estilo Arduino (`setup()` / `loop()`) con `Keypad.h`.
- **Enfoque de este repositorio:** organización, documentación técnica y trazabilidad de hardware sin modificar la lógica principal.

## Estructura del repositorio
```text
.
├── CMakeLists.txt
├── README.md
├── docs/
│   ├── architecture.md
│   └── wiring.md
├── include/
└── src/
    └── main.cpp
```

## Funcionalidades implementadas por el firmware
- Teclas `1..8` encienden LEDs individuales del banco azul.
- Tecla `9` enciende en bloque los LEDs 1..8.
- Tecla `0` apaga en bloque los LEDs 1..8.
- Teclas `A..D` encienden LEDs individuales del banco rojo.
- Tecla `*` enciende el bloque rojo (`A..D`).
- Tecla `#` apaga el bloque rojo (`A..D`).

## Lista de componentes (derivada de `diagram.json`)
- 1 × Raspberry Pi Pico / Pico W (`wokwi-pi-pico` en el diagrama).
- 1 × Teclado matricial 4x4 (`wokwi-membrane-keypad`).
- 12 × LEDs (8 azules + 4 rojos).
- 12 × Resistencias de 220 Ω (limitación de corriente de LEDs).
- 4 × Resistencias de 1 kΩ (pull-up para filas del teclado hacia 3V3).
- Cables de conexión y GND común.

## Mapeo GPIO (Pico W)
Consulta la tabla detallada en `docs/wiring.md`.

## Ejecución en Wokwi
1. Crea un proyecto nuevo con Raspberry Pi Pico/Pico W.
2. Copia el contenido del firmware a `sketch.ino` o al archivo principal según el template de Wokwi.
3. Usa el `diagram.json` proporcionado para replicar conexiones.
4. Inicia la simulación y presiona teclas del keypad.
5. Verifica el encendido/apagado de LEDs según el mapeo.

## Ejecución en hardware real
1. Cablea el circuito exactamente como en `docs/wiring.md`.
2. Asegura tierra común para keypad y LEDs.
3. Compila/carga con tu flujo compatible (Arduino core RP2040 o adaptación a Pico SDK).
4. Abre monitor serial solo si deseas depuración adicional (la lógica no depende de serial).

## Notas sobre Wi-Fi y seguridad
- Este firmware **no usa Wi-Fi**, aunque la placa objetivo sea Pico W.
- Si extiendes el proyecto con conectividad, usa un archivo local de configuración y **no publiques credenciales** en Git.

## Compilación (referencia Pico SDK)
> Importante: el `main.cpp` recibido usa `Keypad.h` estilo Arduino. Para Pico SDK puro se requiere portar GPIO/escaneo de teclado o integrar librería compatible.

Pasos de referencia:
1. Instalar toolchain ARM y CMake.
2. Configurar `PICO_SDK_PATH`.
3. Ejecutar:
   - `mkdir build && cd build`
   - `cmake ..`
   - `make`

