# Event Driven Queued State Machine (EDQSM) – Template in LabVIEW

This project is a **functional template for an event-driven state machine**, structured using a **state queue with attached data**. It's intended as a reusable starting point for developing more complex applications in LabVIEW.

The design aims for a balance between simplicity, clarity, and flexibility, allowing for organized handling of states and data, without sacrificing scalability.

-----

## 🔧 General System Structure

This template implements an **Event Driven Queued State Machine (EDQSM)**. The control logic is based on:

  - **User interface events (UI Events)**: trigger state changes.
  - **A state queue**: allows queuing one or more states sequentially.
  - **State + data cluster**: each queued element includes the state name (string) and an optional data (Variant).

This structure allows decoupling the event logic from the state execution logic, which is useful for medium to large applications.

> **Note**: Although the design is event-driven (EVQSM), it can be easily adapted to a **classic QSM** by simply removing the `Wait` state, which contains the Event Structure. This flexibility allows adjusting the architecture according to the project's complexity or nature.

-----

## 📁 Included SubVIs – Queue Management

The template includes three main subVIs that encapsulate the state queue management:

### 1. `create queue.vi`

Creates the state queue. Defines the data type to be queued: a **cluster** composed of:

![imagen](https://github.com/user-attachments/assets/bab771e1-4271-4695-9bc6-4607c5ad413b)

  - `State` (String): state name.
  - `Data` (Variant): optional data associated with the state.

### 2. `queue state & data.vi` *(Polymorphic SubVI)*

Queues one or more states, with or without attached data.

![imagen](https://github.com/user-attachments/assets/0fd0c99c-5922-4301-bc02-939550514384)

![imagen](https://github.com/user-attachments/assets/9640feb1-488c-4fe8-82c7-04ccc105e443)

Features:

  - Supports a single state or an array of states.
  - The attached data can be a single Variant or an array of Variants.
  - Allows selecting the queuing position:
      - **Default**: at the beginning of the queue (priority).
      - **Optional**: at the end of the queue (FIFO order).

### 3. `dequeue state & data.vi`

Extracts the next element from the queue, returning the state and the attached data.

![imagen](https://github.com/user-attachments/assets/f48c8ed0-d35b-4390-8120-3f50eda3b1e3)

-----

## ⚙️ Included Example Functionality

This template is not an empty structure, but a functional example that demonstrates the complete mechanism.

![imagen](https://github.com/user-attachments/assets/10c78e76-b46f-4f94-90cc-3a34b05d1fbe)

The graphical interface includes:

  - **"Test 1" button** → Queues the `Test 1` state, which displays a pop-up message with the text `"Test 1"`.
  - **"Test 2" button** → Queues the `Test 2` state, which displays a pop-up message with the text `"Test 2"`.
  - **"Stop" button** → Queues the `Stop` state, which ends the machine's execution.

![imagen](https://github.com/user-attachments/assets/a7fdf616-f946-4f09-bda1-5735dc028b9d)

This example allows you to run and visualize the event logic, queuing, and state processing immediately.

-----

## 🔄 Extension Possibilities

This template can be easily extended to adapt to real projects by simply adding new state cases in the state handler and using the queue subVIs to maintain sequential flow control.

By separating event handling, the queue, and the execution logic, a clean and maintainable structure is favored.

-----

## 📝 Final Considerations

Although it's a simple state machine, the design aims to be **robust, reusable, and flexible**. The use of `Variant` allows passing any data type between states, making it adaptable to a wide range of applications.

> **Additional Note**: This template is implemented as an **event-driven state machine (EVQSM)**, but can be easily transformed into a **traditional QSM** by removing the `Wait` state (which contains the Event Structure) and managing states directly through the queue. This makes it even more versatile as a starting point for different types of applications.

This project is published as a personal reusable template, but it may be useful to other developers looking for a clear and functional foundation to build EDQSM applications in LabVIEW.

-----

## 📂 LV2015 Folder

This template is developed in LabVIEW 2024, but it's also available in a version compatible with **LabVIEW 2015**. The `LV2015` folder contains the same project adapted to be opened and used in that LabVIEW version.

-----
