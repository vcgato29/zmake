#  THIS DIRECTORY
DIR9e9db044ef5878b8cede46986309dec9:=${ROOT}/algorithm/sort/quicksort
#  ALL C/C++ FILES IN THIS DIRECTORY (WITHOUT PATHNAME)
${DIR9e9db044ef5878b8cede46986309dec9}C:=
${DIR9e9db044ef5878b8cede46986309dec9}CPP:=test_quicksort.cpp quicksort.cpp 
#  DIRECTORY-SPECIFIC COMPILING FLAGS AND INCLUDE DIRECTORIES
${DIR9e9db044ef5878b8cede46986309dec9}CFLAGS:=${CFLAGS}
${DIR9e9db044ef5878b8cede46986309dec9}CXXFLAGS:=${CXXFLAGS}
${DIR9e9db044ef5878b8cede46986309dec9}INCS:=${INCS}
${DIR9e9db044ef5878b8cede46986309dec9}LIBS:=${LIBS}

DEP+=${${DIR9e9db044ef5878b8cede46986309dec9}CPP:%.cpp=${DIR9e9db044ef5878b8cede46986309dec9}/%.d} ${${DIR9e9db044ef5878b8cede46986309dec9}C:%.c=${DIR9e9db044ef5878b8cede46986309dec9}/%.d} 
OBJ+=${${DIR9e9db044ef5878b8cede46986309dec9}CPP:%.cpp=${DIR9e9db044ef5878b8cede46986309dec9}/%.o} ${${DIR9e9db044ef5878b8cede46986309dec9}C:%.c=${DIR9e9db044ef5878b8cede46986309dec9}/%.o} 
ASM+=${${DIR9e9db044ef5878b8cede46986309dec9}CPP:%.cpp=${DIR9e9db044ef5878b8cede46986309dec9}/%.s} ${${DIR9e9db044ef5878b8cede46986309dec9}C:%.c=${DIR9e9db044ef5878b8cede46986309dec9}/%.s} 

${DIR9e9db044ef5878b8cede46986309dec9}/%.o: ${DIR9e9db044ef5878b8cede46986309dec9}/%.c
	${CC} -o $@ -c $< ${DEPFLAGS} ${${DIR9e9db044ef5878b8cede46986309dec9}CFLAGS} ${${DIR9e9db044ef5878b8cede46986309dec9}INCS}
${DIR9e9db044ef5878b8cede46986309dec9}/%.s: ${DIR9e9db044ef5878b8cede46986309dec9}/%.c
	${CC} -o $@ $< ${ASMFLAGS} ${${DIR9e9db044ef5878b8cede46986309dec9}CFLAGS} ${${DIR9e9db044ef5878b8cede46986309dec9}INCS}

${DIR9e9db044ef5878b8cede46986309dec9}/%.o: ${DIR9e9db044ef5878b8cede46986309dec9}/%.cpp
	${CXX} -o $@ -c $< ${DEPFLAGS} ${${DIR9e9db044ef5878b8cede46986309dec9}CXXFLAGS} ${${DIR9e9db044ef5878b8cede46986309dec9}INCS}
${DIR9e9db044ef5878b8cede46986309dec9}/%.s: ${DIR9e9db044ef5878b8cede46986309dec9}/%.cpp
	${CXX} -o $@ $< ${ASMFLAGS} ${${DIR9e9db044ef5878b8cede46986309dec9}CXXFLAGS} ${${DIR9e9db044ef5878b8cede46986309dec9}INCS}

# Linking pattern rule for this directory
%.exe: ${DIR9e9db044ef5878b8cede46986309dec9}/%.o
	${CXX} -o $@ $^ ${${DIR9e9db044ef5878b8cede46986309dec9}LIBS}
