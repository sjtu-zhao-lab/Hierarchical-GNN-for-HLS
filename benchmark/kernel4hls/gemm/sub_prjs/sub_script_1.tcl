open_project -reset "1"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "3"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "5"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "7"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "9"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "11"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "13"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "15"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "17"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "19"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "21"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "23"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "25"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "27"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "29"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "31"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "33"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "35"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "37"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "39"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "41"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "43"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "45"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "47"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "49"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "51"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "53"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "55"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "57"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "59"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "61"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "63"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "65"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "67"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "69"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "71"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "73"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "75"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "77"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "79"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "81"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "83"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "85"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "87"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "89"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "91"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "93"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "95"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "97"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "99"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "101"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "103"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "105"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "107"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "109"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "111"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "113"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "115"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "117"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "119"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "121"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "123"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "125"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "127"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "129"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "131"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "133"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "135"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "137"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "139"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "141"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "143"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "145"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "147"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "149"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "151"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "153"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "155"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "157"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "159"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "161"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "163"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "165"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "167"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "169"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "171"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "173"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "175"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "177"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "179"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "181"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "183"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "185"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "187"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "189"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "191"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "193"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "195"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "197"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "199"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "201"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "203"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "205"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "207"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "209"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "211"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "213"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "215"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "217"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "219"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "221"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "223"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "225"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "227"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "229"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "231"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "233"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "235"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "237"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "239"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "241"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "243"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "245"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "247"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "249"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "251"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "253"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "255"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "257"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "259"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "261"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "263"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "265"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "267"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "269"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "271"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "273"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "275"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "277"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "279"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "281"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "283"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "285"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "287"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "289"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "291"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "293"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "295"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "297"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "299"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "301"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "303"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "305"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "307"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "309"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "311"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "313"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "315"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "317"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "319"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "321"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "323"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "325"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "327"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "329"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "331"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "333"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "335"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "337"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "339"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "341"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "343"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "345"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "347"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "349"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "351"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "353"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "355"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "357"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "359"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "361"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "363"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "365"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "367"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "369"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "371"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "373"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "375"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "377"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "379"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "381"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "383"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "385"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "387"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "389"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "391"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "393"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "395"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "397"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "399"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "401"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "403"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "405"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "407"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "409"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "411"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "413"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "415"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "417"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "419"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "421"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "423"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "425"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "427"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "429"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "431"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "433"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "435"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "437"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "439"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "441"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "443"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "445"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "447"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "449"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "451"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "453"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "455"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "457"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "459"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "461"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "463"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "465"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "467"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "469"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "471"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "473"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "475"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "477"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "479"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "481"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "483"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "485"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "487"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "489"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "491"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "493"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "495"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "497"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "499"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "501"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "503"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "505"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "507"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "509"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "511"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "513"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "515"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "517"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "519"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "521"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "523"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "525"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "527"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "529"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "531"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "533"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "535"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "537"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "539"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "541"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "543"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "545"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "547"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "549"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "551"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "553"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "555"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "557"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "559"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "561"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "563"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "565"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "567"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "569"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "571"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "573"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "575"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "577"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "579"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "581"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "583"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "585"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "587"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "589"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "591"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "593"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "595"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "597"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "599"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "601"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "603"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "605"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "607"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "609"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "611"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "613"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "615"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "617"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "619"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "621"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "623"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "625"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "627"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "629"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "631"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "633"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "635"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "637"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "639"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "641"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "643"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "645"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "647"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "649"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "651"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "653"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "655"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "657"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "659"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "661"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "663"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "665"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "667"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "669"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "671"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "673"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "675"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "677"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "679"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "681"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "683"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "685"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "687"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "689"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "691"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "693"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "695"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "697"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "699"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "701"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "703"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "705"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "707"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "709"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "711"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "713"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "715"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "717"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "719"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "721"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "723"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "725"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_loop_flatten -off "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_loop_flatten -off "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
set_directive_loop_flatten -off "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "727"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "729"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "731"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "733"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "735"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "737"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "739"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "741"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "743"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "745"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "747"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "749"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "751"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "753"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "755"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "757"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "759"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "761"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "763"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "765"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "767"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "769"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "771"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "773"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "775"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "777"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "779"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "781"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "783"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "785"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "787"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "789"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "791"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "793"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "795"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "797"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "799"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "801"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "803"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "805"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "807"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "809"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "811"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "813"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "815"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "817"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "819"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "821"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "823"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "825"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "827"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "829"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "831"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "833"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "835"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "837"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "839"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "841"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "843"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "845"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "847"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "849"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "851"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "853"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "855"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "857"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "859"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "861"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "863"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "865"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "867"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "869"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "871"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "873"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "875"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "877"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "879"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "881"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "883"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "885"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "887"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "889"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "891"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "893"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "895"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "897"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "899"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "901"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "903"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "905"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "907"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "909"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "911"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "913"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "915"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "917"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "919"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "921"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "923"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "925"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "927"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "929"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "931"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "933"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "935"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "937"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "939"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "941"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "943"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "945"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "947"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "949"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "951"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "953"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "955"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "957"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "959"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "961"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "963"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "965"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "967"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "969"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "971"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "973"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "975"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "977"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "979"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "981"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "983"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "985"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "987"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "989"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "991"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "993"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "995"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "997"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "999"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1001"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1003"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1005"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1007"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1009"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1011"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1013"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1015"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1017"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1019"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1021"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1023"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1025"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1027"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1029"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1031"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1033"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1035"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1037"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1039"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1041"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1043"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1045"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1047"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1049"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1051"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1053"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1055"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1057"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1059"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1061"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1063"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1065"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1067"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1069"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1071"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1073"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1075"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1077"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1079"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1081"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1083"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1085"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1087"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1089"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1091"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1093"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1095"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1097"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1099"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1101"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1103"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1105"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1107"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1109"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1111"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1113"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1115"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1117"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1119"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1121"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1123"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1125"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1127"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1129"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1131"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1133"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1135"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1137"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1139"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1141"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1143"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1145"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1147"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1149"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1151"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1153"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1155"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1157"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1159"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1161"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1163"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1165"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1167"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline -off "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1169"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1171"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1173"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1175"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1177"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1179"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1181"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1183"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1185"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1187"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1189"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1191"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1193"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1195"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1197"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1199"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1201"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1203"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1205"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1207"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1209"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1211"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1213"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1215"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1217"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1219"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1221"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 1 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1223"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1225"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1227"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 2 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1229"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1231"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1233"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1235"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1237"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 4 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1239"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1241"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1243"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1245"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 8 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1247"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1249"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1251"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1253"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1255"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 16 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1257"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1259"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1261"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1263"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline -off "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_loop_flatten -off "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 32 "loop1/lp2"
set_directive_loop_flatten -off "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1265"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1267"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1269"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1271"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1273"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1275"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1277"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1279"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1281"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1283"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1285"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1287"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1289"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1291"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1293"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1295"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1297"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1299"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1301"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1303"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1305"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1307"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1309"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1311"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1313"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1315"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1317"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1319"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1321"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1323"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1325"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1327"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1329"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1331"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1333"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1335"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1337"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1339"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1341"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1343"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1345"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1347"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1349"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1351"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1353"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1355"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1357"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1359"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1361"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 1 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1363"
set_top gemm
add_files ../gemm_lp1.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1365"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1367"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1369"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1371"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1373"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1375"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1377"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1379"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1381"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1383"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1385"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1387"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1389"
set_top gemm
add_files ../gemm_lp2.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1391"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1393"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1395"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1397"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1399"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1401"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1403"
set_top gemm
add_files ../gemm_lp4.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline -off "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1405"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1407"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1409"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1411"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1413"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1415"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1417"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1419"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1421"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1423"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1425"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1427"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1429"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1431"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 1 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1433"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1435"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 2 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1437"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1439"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 4 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 4 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1441"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1443"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 8 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 8 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1445"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1447"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 16 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 16 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1449"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1451"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 32 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline -off "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 32 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1453"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1455"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 1 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 1 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1457"
set_top gemm
add_files ../gemm_lp3.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

open_project -reset "1459"
set_top gemm
add_files ../gemm_lp5.c
open_solution "solution"
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
set_directive_inline -off "loop1"
set_directive_inline -off "loop2"
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" A
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" B
set_directive_interface -mode ap_memory -storage_type ram_s2p "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 1 "gemm" C
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" C
set_directive_array_partition -type cyclic -factor 2 -dim 2 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 1 "gemm" B
set_directive_array_partition -type cyclic -factor 64 -dim 2 "gemm" A
set_directive_pipeline "loop1/lp1"
set_directive_unroll -factor 2 "loop1/lp1"
set_directive_pipeline "loop1/lp2"
set_directive_unroll -factor 64 "loop1/lp2"
set_directive_pipeline -off "loop2/lp3"
set_directive_unroll -factor 1 "loop2/lp3"
set_directive_pipeline "loop2/lp4"
set_directive_unroll -factor 2 "loop2/lp4"
set_directive_pipeline "loop2/lp5"
set_directive_unroll -factor 64 "loop2/lp5"
csynth_design
export_design -evaluate verilog -format ip_catalog -version 2.0.1
close_project

