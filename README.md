# Event Driven Queued State Machine (EDQSM)

This project is a **functional template for an event-driven state machine**, structured using a **state queue with attached data**. It's intended as a reusable starting point for developing more complex applications in LabVIEW.

The design aims for a balance between simplicity, clarity, and flexibility, allowing for organized handling of states and data, without sacrificing scalability.

⚠️ **Note:**: See disclaimer at the end of this document.

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
      - **Default**: at the rear of the queue (FIFO order).
      - **Optional**: at the front of the queue (priority).

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
## Design Considerations

This template follows a common pattern in LabVIEW development where states are managed using a queue. While the structure and behavior may resemble a traditional state machine (SM), it's important to distinguish between deterministic state machines and message handling loops (MHL) driven by queues.

In deterministic state machines, transitions are defined explicitly and sequentially, ensuring predictable behavior. In contrast, queue-based architectures (like this one) allow for external or asynchronous message enqueueing, which may introduce non-deterministic behavior if not carefully controlled.

This distinction becomes especially relevant when designing systems that rely on strict execution order or where race conditions may arise. It is recommended to treat the MHL as a task handler rather than a true state machine unless you encapsulate the logic in a self-contained SubVI with restricted queue access.

-----

## 🔄 Extension Possibilities

This template can be easily extended to adapt to real projects by simply adding new state cases in the state handler and using the queue subVIs to maintain sequential flow control.

By separating event handling, the queue, and the execution logic, a clean and maintainable structure is favored.

-----

## 📝 Final Considerations

Although it's a simple state machine, the design aims to be **robust, reusable, and flexible**. The use of `Variant` allows passing any data type between states, making it adaptable to a wide range of applications.

> **Additional Note**: This template is implemented as an **event-driven state machine (EVQSM)**, but can be easily transformed into a **traditional QSM** by removing the `Wait` state (which contains the Event Structure) and managing states directly through the queue. This makes it even more versatile as a starting point for different types of applications.

This project is shared as a reusable LabVIEW template, originally developed for personal use, but potentially valuable to other developers seeking a clear and functional EDQSM foundation.

-----

## 📂 LV2015 Folder

This template is developed in LabVIEW 2024, but it's also available in a version compatible with **LabVIEW 2015**. The `LV2015` folder contains the same project adapted to be opened and used in that LabVIEW version.

-----

### ⚠️ Disclaimer: On the Use of the Term "State Machine"

This example is presented as an *Event-Driven Queued State Machine* (EDQSM), accurately describing its structure and behavior: states (or tasks) are managed via a queue and executed within an event-driven loop.

However, it is important to note that in the LabVIEW development community, it is widely discussed that this kind of architecture —commonly found in QMH, DQMH, and similar designs— **does not represent a formal State Machine in the strict sense**, because **the execution flow is not determined solely by internal state-transition logic**, but may be affected by multiple external sources enqueueing messages asynchronously (*external enqueueing*).

In a deterministic State Machine, the system is always in one well-defined state, and **transitions to the next state are determined exclusively by the current state and internal conditions**, without interference from outside sources. When external actors (such as UI events, timers, or parallel modules) can insert messages into the queue at arbitrary times, this determinism is lost.

For this reason, many experienced developers recommend **not referring to a Message Handler Loop (MHL) as a State Machine**, since that distinction is crucial for avoiding design flaws, unpredictable behaviors, and debugging difficulties.

That said, this template supports a flexible structure that can behave deterministically **if access to the queue is tightly controlled**, or it can be extended as a more dynamic *task handler* system. The design choice depends on the specific goals of the application, but understanding the implications is essential for robust architecture.

---
