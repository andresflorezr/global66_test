# Documentación de IA y Reglas del Proyecto

Este directorio contiene las reglas, guías y configuraciones específicas para asegurar que los agentes de Inteligencia Artificial (IA) generen código consistente, de alta calidad y alineado con la arquitectura del proyecto `global66_test`.

## 🤖 Instrucción Mandatoria para Agentes de IA

**ATENCIÓN:** Todos los agentes de IA que interactúen con este repositorio **DEBEN** leer y aplicar estrictamente las reglas definidas en el archivo:

👉 **[shared_rules.md](projects/shared_rules.md)**

### ¿Qué hacen estas reglas?

El objetivo de estas reglas es estandarizar el desarrollo y asegurar que cualquier código generado por IA cumpla con los siguientes criterios:

1.  **Consistencia Arquitectónica**: Garantizar el uso correcto de **Clean Architecture** (Domain, Data, Presentation) y el patrón **MVVM** con **Riverpod**.
2.  **Calidad de Código**: Imponer principios como **SOLID**, **DRY** y **KISS** para mantener el código limpio y mantenible.
3.  **Tecnologías Estandarizadas**: Asegurar el uso de las librerías seleccionadas (Dio, Freezed, Riverpod Generator, etc.) y evitar la introducción de dependencias no aprobadas.
4.  **Testing y Seguridad**: Recordar la importancia de incluir pruebas unitarias y seguir prácticas de seguridad desde el primer momento.
5.  **Contexto del Proyecto**: Proveer al agente de IA el contexto necesario sobre el negocio (Pokedex App) y los requisitos de UI/UX (Diseño Atómico, Internacionalización).

Al seguir estas reglas, los agentes de IA actúan como una extensión coherente del equipo de desarrollo, evitando fragmentación en el estilo de código y errores arquitectónicos comunes.
