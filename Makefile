DOT=dot
FORMAT=svg
SRC = $(wildcard *.gv)
OUT = $(patsubst %.gv,%.$(FORMAT),$(SRC))

%.$(FORMAT): %.gv
	dot -T$(FORMAT) $< -o $@

all: $(OUT)

.PHONY: clean
clean:
	$(RM) $(OUT)
