case $CONFIG in
'')
	if test ! -f ../config.sh; then
		(echo "Can't find ../config.sh."; exit 1)
	fi 2>/dev/null
	. ../config.sh
	;;
esac
case "$O" in
*/*) cd `expr X$0 : 'X\(.*\)/'` ;;
esac
echo "Compiling C code in C3"
$spitshell >Makefile <<!GROK!THIS!
INCLUDE_PATH =  -I"\$(ISE_LIBRARY)\library\time\spec\include"
SHELL = /bin/sh
CC = $cc
CPP = $cpp
CFLAGS = $wkoptimize $mtccflags $large -DWORKBENCH -I"$rt_include" -I. \$(INCLUDE_PATH)
CPPFLAGS = $wkoptimize $mtcppflags $large -DWORKBENCH -I"$rt_include" -I. \$(INCLUDE_PATH)
LDFLAGS = $ldflags
CCLDFLAGS = $ccldflags  $console_flags
LDSHAREDFLAGS =  $mtldsharedflags
EIFLIB = "$rt_lib/$prefix$mt_prefix$wkeiflib$suffix"
EIFTEMPLATES = $rt_templates
LIBS = $mtlibs
MAKE = $make
AR = $ar
LD = $ld
MKDEP = $mkdep \$(DPFLAGS) --
MV = $mv
CP = $cp
RANLIB = $ranlib
RM = $rm -f
FILE_EXIST = $file_exist
RMDIR = $rmdir
X2C = "$x2c"
SHAREDLINK = $sharedlink
SHAREDLIBS = $sharedlibs
SHARED_SUFFIX = $shared_suffix
COMMAND_MAKEFILE = 
START_TEST = $start_test 
END_TEST = $end_test 
CREATE_TEST = $create_test 
SYSTEM_IN_DYNAMIC_LIB = counter$shared_suffix 
!GROK!THIS!
$spitshell >>Makefile <<'!NO!SUBS!'

.SUFFIXES:.cpp .o

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C3_c.o 

OLDOBJECTS =  rx1057.o rx1057d.o rx1056.o rx1056d.o ti1052.o ti1052d.o da1050.o \
	da1050d.o rx1037.o rx1037d.o rx1048.o rx1048d.o rx1036.o rx1036d.o \
	rx1044.o rx1044d.o da1046.o da1046d.o ti1051.o ti1051d.o da1055.o \
	da1055d.o da1049.o da1049d.o kl1027.o kl1027d.o kl1026.o kl1026d.o \
	ut1035.o ut1035d.o ut1047.o ut1047d.o da1054.o da1054d.o fi1045.o \
	fi1045d.o da1053.o da1053d.o ki1029.o ki1029d.o kl1031.o kl1031d.o \
	kl1043.o kl1043d.o uc1033.o uc1033d.o kl1034.o kl1034d.o uc1025.o \
	uc1025d.o kl1032.o kl1032d.o ki1030.o ki1030d.o uc1042.o uc1042d.o \
	ki1028.o ki1028d.o uc1041.o uc1041d.o uc1040.o uc1040d.o uc1039.o \
	uc1039d.o uc1038.o uc1038d.o 

all: Cobj3.o

Cobj3.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj3.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

!NO!SUBS!
chmod 644 Makefile
$eunicefix Makefile

