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
echo "Compiling C code in C4"
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

OBJECTS = big_file_C4_c.o 

OLDOBJECTS =  rx1064.o rx1064d.o rx1063.o rx1063d.o rx1062.o rx1062d.o ds1065.o \
	ds1065d.o ds1067.o ds1067d.o ds1085.o ds1085d.o ds1073.o ds1073d.o \
	ds1088.o ds1088d.o kl1074.o kl1074d.o kl1083.o kl1083d.o ds1076.o \
	ds1076d.o ds1068.o ds1068d.o ds1079.o ds1079d.o kl1070.o kl1070d.o \
	kl1082.o kl1082d.o ds1071.o ds1071d.o ds1086.o ds1086d.o ds1072.o \
	ds1072d.o ds1087.o ds1087d.o kl1075.o kl1075d.o kl1084.o kl1084d.o \
	ut1059.o ut1059d.o kl1066.o kl1066d.o kl1080.o kl1080d.o ds1069.o \
	ds1069d.o ds1081.o ds1081d.o uc1060.o uc1060d.o uc1061.o uc1061d.o \
	uc1058.o uc1058d.o ds1090.o ds1090d.o ds1077.o ds1077d.o ds1078.o \
	ds1078d.o ds1089.o ds1089d.o 

all: Cobj4.o

Cobj4.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj4.o $(OBJECTS)
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

