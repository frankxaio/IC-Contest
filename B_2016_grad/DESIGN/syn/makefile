syn:
	dc_shell -f  $$ROOT_PATH/syn/DC_syn.tcl | tee $$ROOT_PATH/syn/run_dc.txt

syn_opt:
	dc_shell -f  $$ROOT_PATH/syn/script_chip_dc_opt.tcl | tee $$ROOT_PATH/syn/run_dc.txt

clean: 
	rm -rf *.pvl *.syn *.mr *.log *.txt *.svf \
	rm -rf alib-52 cksum_dir \