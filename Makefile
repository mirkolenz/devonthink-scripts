CC = osacompile -l JavaScript # i for interactive optional
OUTDIR = "${HOME}/Library/Application Scripts/com.devon-technologies.think3/Menu/00-Default"
JXA = $(wildcard *.jxa)
SCPT = $(patsubst %.jxa,%.scpt,$(JXA))

.PHONY: all

all: $(SCPT) copy

copy: ${SCPT}
	cp -f $^ ${OUTDIR}

%.scpt: %.jxa
	${CC} -o $@ $^

clean:
	rm -f ${OUTDIR}/*.scpt
	rm -f *.scpt
