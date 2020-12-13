####  Makefile for compilation on Unix-like operative systems  ####

OPT=-O3     # Optimization option by default

CC=gcc
ifeq "$(CC)" "gcc"
	COMPILER=gcc
else ifeq "$(CC)" "clang"
	COMPILER=clang
endif

#ARCHITECTURE=_AMD64_
#USE_OPT_LEVEL=_GENERIC_
#ifeq "$(ARCH)" "x64"
#	ARCHITECTURE=_AMD64_
#	USE_OPT_LEVEL=_GENERIC_
#else ifeq "$(ARCH)" "x86"
#	ARCHITECTURE=_X86_
#	USE_OPT_LEVEL=_GENERIC_
#else ifeq "$(ARCH)" "s390x"
#	ARCHITECTURE=_S390X_
#	USE_OPT_LEVEL=_GENERIC_
#else ifeq "$(ARCH)" "ARM"
#	ARCHITECTURE=_ARM_
#	USE_OPT_LEVEL=_GENERIC_
#	ARM_TARGET=YES
#else ifeq "$(ARCH)" "ARM64"
#	ARCHITECTURE=_ARM64_
#	USE_OPT_LEVEL=_GENERIC_
#	ARM_TARGET=YES
#endif

#ifeq "$(OPT_LEVEL)" "GENERIC"
#	USE_OPT_LEVEL=_GENERIC_
#endif

#ifeq "$(ARM_TARGET)" "YES"
#	ARM_SETTING=-lrt
#endif

#ifeq "$(ARCHITECTURE)" "_AMD64_"
#	ifeq "$(USE_OPT_LEVEL)" "_FAST_"
#		MULX=-D _MULX_
#		ifeq "$(USE_MULX)" "FALSE"
#			MULX=
#		else
#			ADX=-D _ADX_
#			ifeq "$(USE_ADX)" "FALSE"
#				ADX=
#			endif
#		endif
#	endif
#endif

AR=ar rcs
RANLIB=ranlib

ADDITIONAL_SETTINGS=-march=native

CFLAGS=$(OPT) -std=gnu11 $(ADDITIONAL_SETTINGS)
LDFLAGS=-lm
EXTRA_OBJECTS_434=objs434/fp_generic.o
OBJECTS_434=objs434/P434.o $(EXTRA_OBJECTS_434) objs/random.o objs/fips202.o

all: lib434 tests KATS

objs434/%.o: P434/%.c
	@mkdir -p $(@D)
	$(CC) -c $(CFLAGS) $< -o $@

objs434/fp_generic.o: P434/generic/fp_generic.c
	    $(CC) -c $(CFLAGS) P434/generic/fp_generic.c -o objs434/fp_generic.o

objs/random.o: random/random.c
	@mkdir -p $(@D)
	$(CC) -c $(CFLAGS) random/random.c -o objs/random.o

objs/fips202.o: sha3/fips202.c
	$(CC) -c $(CFLAGS) sha3/fips202.c -o objs/fips202.o

lib434: $(OBJECTS_434)
	rm -rf lib434 sike
	mkdir lib434 sike
	$(AR) lib434/libsike.a $^
	$(RANLIB) lib434/libsike.a

tests: lib434
	$(CC) $(CFLAGS) -L./lib434 tests/test_SIKEp434.c tests/test_extras.c -lsike $(LDFLAGS) -o sike/test_KEM $(ARM_SETTING)

# AES
AES_OBJS=objs/aes.o objs/aes_c.o

objs/%.o: tests/aes/%.c
	@mkdir -p $(@D)
	$(CC) -c $(CFLAGS) $< -o $@

lib434_for_KATs: $(OBJECTS_434) $(AES_OBJS)
	$(AR) lib434/libsike_for_testing.a $^
	$(RANLIB) lib434/libsike_for_testing.a

KATS: lib434_for_KATs
	$(CC) $(CFLAGS) -L./lib434 tests/PQCtestKAT_kem434.c tests/rng/rng.c -lsike_for_testing $(LDFLAGS) -o sike/PQCtestKAT_kem $(ARM_SETTING)

check: tests

.PHONY: clean

clean:
	rm -rf *.req objs434* objs lib434* sike 

