cmake_minimum_required(VERSION 3.13)

# Plantilla base para Raspberry Pi Pico W (Pico SDK)
# Nota: el código fuente actual usa la librería Keypad con estilo Arduino.
# Se conserva sin cambios de lógica como referencia del firmware principal.
project(pico_keypad_led C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Para compilar con Pico SDK, configura PICO_SDK_PATH en tu entorno.
include(pico_sdk_import.cmake)
pico_sdk_init()

add_executable(pico_keypad_led
  src/main.cpp
)

# Ajusta estas librerías según la adaptación final del framework.
target_link_libraries(pico_keypad_led pico_stdlib)

pico_enable_stdio_usb(pico_keypad_led 1)
pico_enable_stdio_uart(pico_keypad_led 0)

pico_add_extra_outputs(pico_keypad_led)
