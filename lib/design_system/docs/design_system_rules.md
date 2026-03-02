# Reglas del Design System

Este documento establece las directrices para el uso y extensión del Design System de Global66 Test. El objetivo es mantener una UI consistente y modular.

## 🗺️ Mapa de Componentes

Para una referencia rápida de todos los componentes disponibles y sus propiedades, consulta el archivo de definición YAML:

👉 **[components_map.yaml](components_map.yaml)**

Este archivo sirve como fuente de verdad para agentes de IA y desarrolladores sobre qué widgets utilizar en lugar de crear implementaciones ad-hoc.

## 🎨 Principios Generales

1.  **Atomic Design**: Los componentes deben clasificarse estrictamente en `atoms`, `molecules` u `organisms` según su complejidad.
2.  **Reutilización**: Antes de crear un nuevo widget, verifica en el mapa de componentes si ya existe uno que cumpla la función.
3.  **Theming**: Utiliza siempre las constantes de `AppColors` y `AppTypography`. No hardcodees colores ni estilos de texto.

## 🧱 Uso de Componentes

### Átomos (Atoms)
Son los bloques fundamentales.
- **Botones**: Usa `AppButton` para cualquier acción principal. Evita `ElevatedButton` directo.
- **Texto**: Usa `AppText` con sus constructores nombrados (e.g., `AppText.titleLarge`). Evita `Text` directo para asegurar consistencia tipográfica.
- **Tags**: Usa `AppTag` para etiquetas de tipos o categorías.

### Moléculas (Molecules)
Combinaciones simples de átomos.
- **Clippers**: `ArcClipper` para fondos curvos.

### Organismos (Organisms)
Componentes complejos con lógica de negocio o múltiples átomos/moléculas.
- **Tarjetas**: `PokemonCard` para mostrar información resumida de una entidad.

## 🤖 Instrucciones para Agentes de IA

Cuando se te pida implementar una UI:
1.  Lee el archivo `components_map.yaml` para identificar qué componentes ya existen.
2.  Prepara tu implementación usando estos componentes en lugar de widgets nativos de Flutter siempre que sea posible.
3.  Si necesitas un nuevo componente, primero sugiere su creación siguiendo estas reglas y agrégalo al mapa.
