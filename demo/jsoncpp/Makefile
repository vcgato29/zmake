ROOT    :=$(realpath ..)
D       :=$(realpath $(dir $(lastword $(MAKEFILE_LIST))))# this directory
-include $(ROOT)/root.mk
-include $(ROOT)/gtest/rules.mk
-include $(ROOT)/utils/rules.mk
-include $(D)/rules.mk
# Inlcude more rules.mk here if you this directory depends on them.
-include $(DEP)

# List all the executables you want to run when you type `make test` in $(TESTS)
# Note that you need to -include $(ROOT)/gtest/rules.mk to actually build those
# executables
TESTS:=gtest_jsoncpp.exe

.PHONY: all asm clean test
all: $(OBJ)
asm: $(ASM)
clean:
	$(QUIET)rm -f *.exe $(OBJ) $(DEP) $(ASM)
test: $(TESTS)
	$(QUIET)for t in $^ ; do ./"$$t" ; done

# Sample linking rules for building executables:
#test_heapsort.exe: $(D)/heapsort.o $(D)/test_heapsort.o $(ROOT)/utils/utils.o
gtest_jsoncpp.exe: $(ROOT)/gtest/gtest_main.a $(D)/gtest_jsoncpp.o $(D)/jsoncpp.o \
	$(ROOT)/utils/Table.o
