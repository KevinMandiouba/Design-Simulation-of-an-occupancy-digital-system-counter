# 🎛️ Design and Simulation of an Occupancy Digital System Counter

This project contains the files for the COEN 313 course (Summer 2024). It includes VHDL code, testbenches, constraints, and various logs and results for the design and simulation of an occupancy digital system counter.

## 📦 Project Deliverables
- **project.vhd**: Main VHDL code for the program
- **testbench.vhd**: Testbench of the program
- **project.xdc**: Constraints file used for implementation and synthesis on Vivado
- **project.do**: Do file used for the Modelsim simulation
- **vivado.log**: Vivado log
- **synthesis.log**: Synthesis log from Vivado
- **project_results.pdf**: Contains the Modelsim testbench waves trial
- **project_simulation.png**: Contains the Vivado testbench waves trial
- **synthesized_project.pdf**: Synthesized design schematic from Vivado
- **elaborated_project.pdf**: Elaborated design schematic from Vivado

## 🛠️ Setup Instructions
### Modelsim
1. Compile the main VHDL code file and testbench file.
2. Run the following command to get the transcripts and wave:
```sh
vsim -do project.do project &
```
### Vivado
1. Open Vivado and create a new project.
2. Add the `project.vhd` and `project.xdc` files to the project.
3. Run synthesis and implementation.
4. Generate the bitstream.
5. Open the synthesized design to view the schematic.
