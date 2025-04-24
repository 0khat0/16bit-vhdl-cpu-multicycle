# 16bit-vhdl-cpu-multicycle# 16-Bit VHDL CPU – ENGG 3380 Project

This project is a 16-bit multi-component CPU built in VHDL as part of ENGG 3380. The CPU is composed of modular arithmetic, control, memory, and routing units. It supports basic arithmetic, memory I/O, and control flow operations including BNE and JMP.

---

## 🧠 Features

- ✅ Custom 16-bit CPU top module (`CPU_33802.vhd`, `CPU_3380_Test11.vhd`)
- ✅ ALU, full adder, register file, control unit, memory blocks
- ✅ Instruction memory initialized from file (Instr.txt)
- ✅ 2:1 and 3:1 multiplexers for data and control flow
- ✅ Program Counter with auto-increment (+2 per cycle)
- ✅ Support for:
  - Arithmetic & logic operations
  - Memory read/write
  - **BNE** (branch if not equal)
  - **JMP** (jump using concatenated PC and immediate)
- ✅ Waveform-based simulation verification (ISim)

---

## 🗂️ Project Structure

- `CPU_33802.vhd`, `CPU_3380_Test11.vhd` – Top-level CPU design and test wrapper
- `ALU_16Bit3.vhd`, `Control1.vhd`, `Registers2.vhd`, etc. – Core logic components
- `Memory.vhd` – Shared module used for data and instruction memory
- `PC_REG.vhd` – Program counter
- `MUX*` – 2:1 and 3:1 muxes for internal routing
- `Instr.txt`, `in`, `Instr2.txt` – Input instruction files
- `project_part2_supportive_files/` – Additional instruction inputs

---

## 🚀 How to Simulate

1. Open in Vivado or ISim
2. Set `CPU_3380_Test11.vhd` as the top-level testbench
3. Run simulation:
   - Inputs come from `Instr.txt`
   - Outputs are visible via waveform
4. Track key signals:
   - `data_out` (Instr Mem)
   - `reg` (Register file)
   - `mem` (Data memory)

---

## 📷 Waveform Verification

Include:
- `data_out` (hex)
- `reg` and `mem` signals (signed decimal)
- Control signals: `reset`, `clock`, `tick`, `run_time`

Use ISim's **default layout** → expand `uut` → add submodule signals.

---

## 📘 Project Report Highlights

- Implemented 3-1 mux logic using MSB extraction + zero-padding
- Designed control logic to support BNE and JMP paths
- Input-driven testing via file simulation (no manual testbench)
- Faced and overcame challenges debugging memory flow and mux select collisions

---


