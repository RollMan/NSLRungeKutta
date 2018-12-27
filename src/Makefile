TARGET := RungeKutta_tb
SRC := Fixed.nsl RungeKutta.nsl Function.nsl
OBJV := $(SRC:%.nsl=%.v)
NSLFLAGS := -verisim2

.SUFFIXES: .nsh .nsl .v .vvp .vcd

$(TARGET).v:$(TARGET).nsl $(OBJV)
	nsl2vl $(NSLFLAGS) -target $(TARGET) -o $@ $<

.nsl.v:
	nsl2vl -o $@ $^

$(TARGET).vvp: $(TARGET).v $(OBJV)
	iverilog -o $@ $^

$(TARGET).vcd: $(TARGET).vvp
	vvp $^

.PHONY: run
run: $(TARGET).vcd
wave: $(TARGET).vcd
	gtkwave $^

.PHONY: clean
clean:
	-rm *.v *.vcd *.vvp
