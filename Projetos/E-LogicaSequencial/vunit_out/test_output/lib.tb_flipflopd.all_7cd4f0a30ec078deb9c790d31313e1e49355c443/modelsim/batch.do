onerror {quit -code 1}
source "/home/pedro/Desktop/INSPER/Elementos/Z01.1-Hardware/Projetos/E-LogicaSequencial/vunit_out/test_output/lib.tb_flipflopd.all_7cd4f0a30ec078deb9c790d31313e1e49355c443/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
