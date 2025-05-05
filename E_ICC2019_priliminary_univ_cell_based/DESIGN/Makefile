RTL_SRCS := ./testfixture.sv ./CONV.sv
GATE_SRCS := ./testfixture.sv ./CONV_syn.v tsmc13_neg.v


# ================ comp and run spilt ================
comp:
	@echo $(RTL_SRCS)
	vcs \
	-q \
	-R \
	-full64 \
	-lca \
	-kdb \
	-debug_access+all \
	-sverilog \
	-timescale=1ns/1ps \
	$(RTL_SRCS) \
	2>&1 | grc -c ~/.grc/vcs.conf cat

sim:
	./simv -verdi &
# ================ comp and run spilt ================

# compile and simulation
# RTL simulation
rtl:
	@echo $(RTL_SRCS)
	vcs \
	-q \
	-R \
	-full64 \
	-debug_access+all \
	-sverilog \
	-timescale=1ns/10ps \
	$(RTL_SRCS) \
	-l vcs_rtl.log \
	2>&1 | grc -c ~/.grc/vcs.conf cat

# Gate-level simulation
gate:
	vcs \
	-R \
	-kdb \
	+neg_tchk \
	-negdelay \
	-full64 \
	-debug_access+all \
	-l vcs_gate.log \
	+define+SDF \
	$(GATE_SRCS) \
	2>&1 | grc -c ~/.grc/vcs.conf cat


# verdi
vd:
	verdi -ssf *.fsdb &

# synthesis
syn:
	dc_shell -f  ./DC_syn.tcl | tee $$ROOT_PATH/syn/run_dc.txt

# lint
lt:
	vcs -q -full64 -sverilog +lint=all \
	./CONV.sv \
	2>&1 | grc -c ~/.grc/vcs.conf cat


clean:
	rm -rf *.log ucli.key csrc simv.daidir verdiLog inter.fsdb verdi_config_file