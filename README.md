# 🕹️ Paddle Ball Game in 8086 Assembly

A classic paddle-ball game built entirely in **8086 Assembly**, using BIOS and DOS interrupts for graphics, input handling, and timing. The game mimics the retro arcade style where a ball bounces off walls and a paddle, and the player must prevent it from hitting the ground.

---

## 🎮 Gameplay

- Control a vertical paddle using the **Up (↑)** and **Down (↓)** arrow keys.
- Prevent the ball from falling past the paddle.
- The ball bounces off walls and the paddle with realistic velocity changes.
- Press **Esc** to exit the game.
- Choose between:
  - `1. START GAME`
  - `2. EXIT`

---

## 🧠 Features

- Low-level graphics rendering using `INT 10h` pixel plotting.
- Custom keyboard interrupt handler (`INT 9h`) for responsive paddle movement.
- Timer interrupt (`INT 1Ch`) for smooth ball animation.
- Collision detection with boundaries and paddle.
- ASCII-based UI elements rendered directly to video memory.

---

## 🛠️ Requirements

- DOSBox or any x86 emulator that supports 16-bit real mode.
- TASM or MASM assembler to compile the `.asm` file.
- Linker like TLINK to generate `.COM` or `.EXE`.

---

## 🚀 How to Run

1. **Assemble the code**:
   ```bash
   tasm game.asm
   tlink game.obj
