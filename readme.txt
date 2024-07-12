This project file contains the Project files for COEN 313 (Summer 2024).

My project files include the following deliverables:

project.vhd -> main VHDL code for the program
testbench.vhd -> testbench of the program
project_xdc.txt -> constraints file used to carry out the implementation and synthesis on Vivado (as a txt file)
project_do.txt -> do file used for the Modelsim simulation (as a txt file)
vivado.log -> vivado log
synthesis.log -> synthesis log from Vivado
project_results.pdf -> contains the Modelsim testbench waves trial
project_simulation.png -> contains the Vivado testbench waves trial
synthesized_project.pdf -> synthesized design schematic from Vivado of VHDL system design
elaborated_project.pdf -> elaborated design schematic from Vivado of VHDL system design

Some information on how to run the files: 
1- Modelsim: To run the testbench to get the transcripts and wave, compile both the main VHDL code file and testbench file and then do the command [vsim -do project.do project &]
2- Vivado: To get the synthesis and implementation from Vivado, use the main VHDL file along with the constraints file project.xdc to be able to get the vivado and synthesis log files and elaborated and synthesized schematics.