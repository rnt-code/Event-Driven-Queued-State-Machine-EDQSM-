# Event Driven Queued State Machine (EDQSM) – Template en LabVIEW

Este proyecto es un **template funcional de una máquina de estados basada en eventos**, estructurada mediante una **cola de estados con datos adjuntos**. Está pensado como punto de partida reutilizable para desarrollar aplicaciones más complejas en LabVIEW.

El diseño busca equilibrio entre simplicidad, claridad y flexibilidad, permitiendo un manejo ordenado de estados y datos, sin perder escalabilidad.

---

## 🔧 Estructura general del sistema

Este template implementa una **Queued State Machine controlada por eventos** (Event Driven Queued State Machine - EDQSM). La lógica de control se basa en:

- **Eventos de interfaz de usuario (UI Events)**: disparan los cambios de estado.
- **Una cola de estados**: permite encolar uno o varios estados secuencialmente.
- **Cluster de estado + dato**: cada elemento encolado incluye el nombre del estado (string) y un dato opcional (Variant).

Esta estructura permite desacoplar la lógica de eventos de la lógica de ejecución de estados, lo cual resulta útil para aplicaciones medianas o grandes.

> **Nota**: Aunque el diseño está basado en eventos (EVQSM), puede adaptarse fácilmente a una **QSM clásica**, simplemente eliminando el estado `Wait`, que contiene el Event Structure. Esta flexibilidad permite ajustar la arquitectura según la complejidad o naturaleza del proyecto.

---

## 📁 SubVIs incluidos – Gestión de la cola

El template incluye tres subVIs principales que encapsulan el manejo de la cola de estados:

### 1. `create queue.vi`
Crea la cola de estados. Define el tipo de datos que se encolarán: un **cluster** compuesto por:

![imagen](https://github.com/user-attachments/assets/bab771e1-4271-4695-9bc6-4607c5ad413b)

- `State` (String): nombre del estado.
- `Data` (Variant): dato opcional asociado al estado.

### 2. `queue state & data.vi` *(SubVI polimórfico)*
Encola uno o varios estados, con o sin datos adjuntos.

![imagen](https://github.com/user-attachments/assets/0fd0c99c-5922-4301-bc02-939550514384)

![imagen](https://github.com/user-attachments/assets/9640feb1-488c-4fe8-82c7-04ccc105e443)

Características:
- Admite un estado individual o un array de estados.
- El dato adjunto puede ser un único Variant o un array de Variant.
- Permite seleccionar la posición de encolado:
  - **Por defecto:** al inicio de la cola (prioridad).
  - **Opcional:** al final de la cola (orden FIFO).

### 3. `dequeue state & data.vi`
Extrae el siguiente elemento de la cola, devolviendo el estado y el dato adjunto.

![imagen](https://github.com/user-attachments/assets/f48c8ed0-d35b-4390-8120-3f50eda3b1e3)

---

## ⚙️ Funcionamiento del ejemplo incluido

Este template no es una estructura vacía, sino un ejemplo funcional que demuestra el mecanismo completo.

![imagen](https://github.com/user-attachments/assets/10c78e76-b46f-4f94-90cc-3a34b05d1fbe)

La interfaz gráfica incluye:
- **Botón “Test 1”** → Encola el estado `Test 1`, que muestra un mensaje pop-up con el texto `"Test 1"`.
- **Botón “Test 2”** → Encola el estado `Test 2`, que muestra un mensaje pop-up con el texto `"Test 2"`.
- **Botón “Stop”** → Encola el estado `Stop`, que finaliza la ejecución de la máquina.

![imagen](https://github.com/user-attachments/assets/a7fdf616-f946-4f09-bda1-5735dc028b9d)

Este ejemplo permite ejecutar y visualizar la lógica de eventos, encolado y procesamiento de estados de forma inmediata.

---

## 🔄 Posibilidades de extensión

Este template puede extenderse fácilmente para adaptarse a proyectos reales, simplemente agregando nuevos casos de estado en el manejador de estados y utilizando los subVIs de cola para mantener el control secuencial del flujo.

Al separar el manejo de eventos, la cola y la lógica de ejecución, se favorece una estructura limpia y mantenible.

---

## 📝 Consideraciones finales

Aunque se trata de una máquina de estados simple, el diseño busca ser **robusto, reutilizable y flexible**. El uso de `Variant` permite pasar cualquier tipo de dato entre estados, lo cual lo hace adaptable a una amplia gama de aplicaciones.

> **Nota adicional**: este template está implementado como una **máquina de estados impulsada por eventos (EVQSM)**, pero puede transformarse sin dificultad en una **QSM tradicional**, removiendo el estado `Wait` (que contiene el Event Structure) y gestionando los estados directamente mediante la cola. Esto lo hace aún más versátil como punto de partida para distintos tipos de aplicaciones.

Este proyecto queda publicado a modo de plantilla personal reutilizable, pero puede ser útil para otros desarrolladores que busquen una base clara y funcional para construir aplicaciones con EDQSM en LabVIEW.

---

## 📂 Carpeta LV2015

Este template esta desarollado en LabVIEW 2024, pero también está disponible en una versión compatible con **LabVIEW 2015**. La carpeta `LV2015` contiene el mismo proyecto adaptado para ser abierto y utilizado en esa versión de LabVIEW.

---
