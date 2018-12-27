TARGET := Fixed_tb
SRC := Fixed
NSLFLAGS := -verisim2

.SUFFIXES: .nsh .nsl .v .vvp .vcd

$(TARGET).v:$(TARGET).nsl
	nsl2vl $(NSLFLAGS) -target $(TARGET) -o $@ $^

.nsl.v:
	nsl2vl -o $@ $^

$(TARGET).vvp: $(TARGET).v $(SRC).v
	iverilog -o $@ $^

$(TARGET).vcd: $(TARGET).vvp
	vvp $^

.PHONY: run
run: $(TARGET.vcd)
wave: $(TARGET).vcd
	gtkwave $^

.PHONY: clean
	rm *.v *.vcd *.vvp
