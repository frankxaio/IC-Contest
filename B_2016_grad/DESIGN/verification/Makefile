
# UMC018_ITRI_v0.8 Register-level Simulation
rtl:
	vcs \
	-R \
	-sverilog \
	-timescale=1ns/10ps \
	-f \
	./rtl_sim/rtl_sim.f \
	-full64 \
	-debug_access+all \
	| tee ./rtl_sim/cs_rtl.log

# UMC018_ITRI_v0.8 Gate-level Simulation
gate:
	vcs \
	-R \
	+neg_tchk \
	-negdelay \
	-f \
	./gate_sim/gate_sim.f \
	-full64 \
	-debug_access+all \
	+define+SDF \
	| tee ./gate_sim/chip_gls.log


clean:
	rm -rf nWaveLog csrc DVEfiles novas* *.log simv* *fsdb* ucli.key *.vpd verdiLog sdfAnnotateInfo


# saif:
# 	fsdb2saif ./post_sim/CHIP_syn.fsdb -o ./post_sim/chip_syn.saif