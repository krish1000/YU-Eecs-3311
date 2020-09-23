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
echo "Compiling C code in C9"
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
SYSTEM_IN_DYNAMIC_LIB = birthday_book$shared_suffix 
!GROK!THIS!
$spitshell >>Makefile <<'!NO!SUBS!'

.SUFFIXES:.cpp .o

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C9_c.o 

OLDOBJECTS =  rx1226.o rx1226d.o rx1225.o rx1225d.o rx1224.o rx1224d.o ds1231.o \
	ds1231d.o ds1227.o ds1227d.o kl1235.o kl1235d.o kl1238.o kl1238d.o \
	kl1241.o kl1241d.o kl1249.o kl1249d.o ds1253.o ds1253d.o kl1247.o \
	kl1247d.o kl1254.o kl1254d.o ds1233.o ds1233d.o kl1234.o kl1234d.o \
	kl1239.o kl1239d.o kl1242.o kl1242d.o kl1248.o kl1248d.o ds1229.o \
	ds1229d.o ds1228.o ds1228d.o kl1236.o kl1236d.o kl1240.o kl1240d.o \
	kl1243.o kl1243d.o kl1250.o kl1250d.o ds1255.o ds1255d.o in1237.o \
	in1237d.o kl1232.o kl1232d.o ds1230.o ds1230d.o ki1245.o ki1245d.o \
	ki1244.o ki1244d.o uc1223.o uc1223d.o ki1246.o ki1246d.o kl1251.o \
	kl1251d.o kl1252.o kl1252d.o 

all: Cobj9.o

Cobj9.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj9.o $(OBJECTS)
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

