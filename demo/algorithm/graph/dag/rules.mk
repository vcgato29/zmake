#  THIS DIRECTORY
DIRc150115eb4a351b153b4675eb9a5085e:=${ROOT}/algorithm/graph/dag
#  ALL C/C++ FILES IN THIS DIRECTORY (WITHOUT PATHNAME)
${DIRc150115eb4a351b153b4675eb9a5085e}C:=
${DIRc150115eb4a351b153b4675eb9a5085e}CPP:=test_dag.cpp dag.cpp 
#  DIRECTORY-SPECIFIC COMPILING FLAGS AND INCLUDE DIRECTORIES
${DIRc150115eb4a351b153b4675eb9a5085e}CFLAGS:=${CFLAGS}
${DIRc150115eb4a351b153b4675eb9a5085e}CXXFLAGS:=${CXXFLAGS}
${DIRc150115eb4a351b153b4675eb9a5085e}INCS:=${INCS}
${DIRc150115eb4a351b153b4675eb9a5085e}LIBS:=${LIBS}

DEP+=${${DIRc150115eb4a351b153b4675eb9a5085e}CPP:%.cpp=${DIRc150115eb4a351b153b4675eb9a5085e}/%.d} ${${DIRc150115eb4a351b153b4675eb9a5085e}C:%.c=${DIRc150115eb4a351b153b4675eb9a5085e}/%.d} 
OBJ+=${${DIRc150115eb4a351b153b4675eb9a5085e}CPP:%.cpp=${DIRc150115eb4a351b153b4675eb9a5085e}/%.o} ${${DIRc150115eb4a351b153b4675eb9a5085e}C:%.c=${DIRc150115eb4a351b153b4675eb9a5085e}/%.o} 
ASM+=${${DIRc150115eb4a351b153b4675eb9a5085e}CPP:%.cpp=${DIRc150115eb4a351b153b4675eb9a5085e}/%.s} ${${DIRc150115eb4a351b153b4675eb9a5085e}C:%.c=${DIRc150115eb4a351b153b4675eb9a5085e}/%.s} 

${DIRc150115eb4a351b153b4675eb9a5085e}/%.o: ${DIRc150115eb4a351b153b4675eb9a5085e}/%.c
	${CC} -o $@ -c $< ${DEPFLAGS} ${${DIRc150115eb4a351b153b4675eb9a5085e}CFLAGS} ${${DIRc150115eb4a351b153b4675eb9a5085e}INCS}
${DIRc150115eb4a351b153b4675eb9a5085e}/%.s: ${DIRc150115eb4a351b153b4675eb9a5085e}/%.c
	${CC} -o $@ $< ${ASMFLAGS} ${${DIRc150115eb4a351b153b4675eb9a5085e}CFLAGS} ${${DIRc150115eb4a351b153b4675eb9a5085e}INCS}

${DIRc150115eb4a351b153b4675eb9a5085e}/%.o: ${DIRc150115eb4a351b153b4675eb9a5085e}/%.cpp
	${CXX} -o $@ -c $< ${DEPFLAGS} ${${DIRc150115eb4a351b153b4675eb9a5085e}CXXFLAGS} ${${DIRc150115eb4a351b153b4675eb9a5085e}INCS}
${DIRc150115eb4a351b153b4675eb9a5085e}/%.s: ${DIRc150115eb4a351b153b4675eb9a5085e}/%.cpp
	${CXX} -o $@ $< ${ASMFLAGS} ${${DIRc150115eb4a351b153b4675eb9a5085e}CXXFLAGS} ${${DIRc150115eb4a351b153b4675eb9a5085e}INCS}

# Linking pattern rule for this directory
%.exe: ${DIRc150115eb4a351b153b4675eb9a5085e}/%.o
	${CXX} -o $@ $^ ${${DIRc150115eb4a351b153b4675eb9a5085e}LIBS}
