ROOT    :=/Users/qzmfrank/git/zmake/demo
d       :=${ROOT}/hack/proc#this directory
-include ${ROOT}/root.mk
-include ${ROOT}/hack/proc/rules.mk
-include ${DEP}

.PHONY: all asm clean
all: ${OBJ}
asm: ${ASM}
clean:
	rm -f *.exe ${OBJ} ${DEP} ${ASM}

address_space.exe: ${d}/address_space.o
