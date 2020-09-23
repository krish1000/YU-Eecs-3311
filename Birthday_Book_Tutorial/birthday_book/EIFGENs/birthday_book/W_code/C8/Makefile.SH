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
echo "Compiling C code in C8"
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

OBJECTS = big_file_C8_c.o 

OLDOBJECTS =  rx1219.o rx1219d.o rx1218.o rx1218d.o ti1214.o ti1214d.o da1212.o \
	da1212d.o rx1199.o rx1199d.o rx1210.o rx1210d.o rx1198.o rx1198d.o \
	rx1206.o rx1206d.o da1208.o da1208d.o ti1213.o ti1213d.o da1217.o \
	da1217d.o da1211.o da1211d.o ut1197.o ut1197d.o ut1221.o ut1221d.o \
	ut1209.o ut1209d.o da1216.o da1216d.o fi1207.o fi1207d.o da1215.o \
	da1215d.o uc1222.o uc1222d.o ki1191.o ki1191d.o kl1193.o kl1193d.o \
	kl1205.o kl1205d.o uc1195.o uc1195d.o kl1196.o kl1196d.o uc1220.o \
	uc1220d.o kl1194.o kl1194d.o ki1192.o ki1192d.o uc1204.o uc1204d.o \
	ki1190.o ki1190d.o uc1203.o uc1203d.o uc1202.o uc1202d.o uc1201.o \
	uc1201d.o uc1200.o uc1200d.o 

all: Cobj8.o

Cobj8.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj8.o $(OBJECTS)
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

