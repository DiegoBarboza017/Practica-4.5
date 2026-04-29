# Estructura del repositorio

## Árbol recomendado
```text
nombre-del-proyecto/
├── LÉAME.md
├── documentos/
│ ├── propuesta.md
│ ├── caso_de_uso.md
│ ├── estructura_repositorio.md
│ └── plan_de_pruebas.md
├── src/
│ └── principal.<ext>
├── guiones/
│ └── run.sh
└── pruebas/
    └── test_plan.md
```

## Equivalencia usada en esta plantilla
En este repositorio usamos nombres comunes para GitHub:
- `README.md` ≈ `LÉAME.md`
- `docs/` ≈ `documentos/`
- `scripts/` ≈ `guiones/`
- `tests/` ≈ `pruebas/`
- `src/main.<ext>` ≈ `src/principal.<ext>`

## Explicación de carpetas
- `docs/`: documentación base de la propuesta.
- `src/`: código fuente mínimo del prototipo.
- `scripts/`: scripts de ejecución simples.
- `tests/`: checklist y evidencia mínima de pruebas.

## Explicación de archivos
- `README.md`: instrucciones generales de la actividad.
- `docs/propuesta.md`: definición técnica de la idea.
- `docs/caso_de_uso.md`: escenario principal y flujos.
- `docs/estructura_repositorio.md`: guía de organización.
- `docs/plan_de_pruebas.md`: diseño de pruebas.
- `scripts/run.sh`: plantilla de ejecución local.
- `tests/test_plan.md`: checklist corto de validación.
- `src/main.<ext>`: punto de entrada del prototipo.

## Reglas para nombrar archivos
- Usa minúsculas y guiones bajos.
- Evita espacios y acentos en nombres de archivo.
- Usa nombres descriptivos y cortos.

## Reglas para evitar desorden
- Cada archivo debe tener una función clara.
- Evita duplicar documentación.
- Mantén scripts simples y sin dependencias externas.
- Registra cambios relevantes en commits claros.

## Nota final
Mantén pocos archivos, funciones pequeñas y alcance acotado.
