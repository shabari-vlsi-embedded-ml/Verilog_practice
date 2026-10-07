# Verilog Practice

Daily Verilog practice for RTL design, testbenches, and Vivado simulation.

## Goal

- Build strong fundamentals in digital design and Verilog.
- Practice clean RTL coding, testbench writing, and waveform debugging.
- Progress from basic gates to complex modules like counters and FSMs.

## Structure

Each day is in its own folder:

- `day1_nand_gates/` – NAND-only NOT, AND, OR gates + testbench  
- `day2_xor_xnor/` – XOR/XNOR using NAND gates + testbench  
- `day3_adders/` – Half adder, full adder, 4-bit ripple carry adder  
- `day4_mux/` – 2:1 and 4:1 MUX  
- `day5_decoder_encoder/` – 2-to-4 decoder, encoder, priority encoder  
- (and so on…)

Typical contents per day:

- `design.v` – RTL module(s)
- `tb_design.v` – Testbench
- Optional: `README.md` – Notes on what was implemented and how to simulate

## Tools

- Vivado 2025.2 (behavioral simulation)
- Git + GitHub for version control and portfolio

## Learning Focus

- Gate-level and dataflow modeling
- Testbench patterns (stimulus, delays, $monitor, waveforms)
- Coding style: blocking vs non-blocking, reset strategy, parameterization
- Waveform debugging in Vivado

## Links

- GitHub profile: https://github.com/shabari-vlsi-embedded-ml

---

Feel free to reuse this structure for your own Verilog practice.
