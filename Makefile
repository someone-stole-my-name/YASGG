# This Makefile is for the App::yasgg extension to perl.
#
# It was generated automatically by MakeMaker version
# 7.62 (Revision: 76200) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     ABSTRACT_FROM => q[bin/yasgg]
#     AUTHOR => [q[Christian Segundo <christian@segundo.io>]]
#     BUILD_REQUIRES => { CSS::Sass=>q[0], ExtUtils::MakeMaker=>q[0], File::ShareDir::Install=>q[0] }
#     CONFIGURE_REQUIRES => {  }
#     EXE_FILES => [q[bin/yasgg]]
#     LICENSE => q[perl_5]
#     META_MERGE => { meta-spec=>{ version=>q[2] }, resources=>{ repository=>{ url=>q[https://git.segundo.io/yasgg/about/] } } }
#     NAME => q[App::yasgg]
#     PREREQ_PM => { CSS::Sass=>q[0], ExtUtils::MakeMaker=>q[0], File::Basename=>q[0], File::Copy=>q[0], File::Copy::Recursive=>q[0], File::Find=>q[0], File::ShareDir=>q[0], File::ShareDir::Install=>q[0], File::Slurp=>q[0], Getopt::Long=>q[0], Image::Magick::Thumbnail=>q[0.06], MIME::Types=>q[0], Scalar::MoreUtils=>q[0], Template::Liquid=>q[0], strictures=>q[2] }
#     TEST_REQUIRES => {  }
#     VERSION_FROM => q[bin/yasgg]

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/darwin-2level/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = cc
CCCDLFLAGS =  
CCDLFLAGS =  
DLEXT = bundle
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = cc
LDDLFLAGS = -L/opt/homebrew/lib -mmacosx-version-min=13.3 -bundle -undefined dynamic_lookup -L/usr/local/lib -fstack-protector-strong
LDFLAGS = -L/opt/homebrew/lib -fstack-protector-strong -L/usr/local/lib
LIBC = 
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = darwin
OSVERS = 22.4.0
RANLIB = ranlib
SITELIBEXP = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/site_perl/5.34.0
SITEARCHEXP = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/site_perl/5.34.0/darwin-2level
SO = dylib
VENDORARCHEXP = 
VENDORLIBEXP = 


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = App::yasgg
NAME_SYM = App_yasgg
VERSION = 1.00
VERSION_MACRO = VERSION
VERSION_SYM = 1_00
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 1.00
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1
MAN3EXT = 3
MAN1SECTION = 1
MAN3SECTION = 3
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0
SITEPREFIX = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0
VENDORPREFIX = 
INSTALLPRIVLIB = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/site_perl/5.34.0
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = 
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/darwin-2level
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/site_perl/5.34.0/darwin-2level
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = 
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = 
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = 
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = 
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = 
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0
PERL_ARCHLIB = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/darwin-2level
PERL_ARCHLIBDEP = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/darwin-2level
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/darwin-2level/CORE
PERL_INCDEP = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/darwin-2level/CORE
PERL = "/Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/bin/perl"
FULLPERL = "/Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/bin/perl"
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/ExtUtils/MakeMaker.pm
MM_VERSION  = 7.62
MM_REVISION = 76200

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = App/yasgg
BASEEXT = yasgg
PARENT_NAME = App
DLBASE = $(BASEEXT)
VERSION_FROM = bin/yasgg
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = bin/yasgg
MAN3PODS = 

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIBDEP)$(DFSEP)Config.pm $(PERL_INCDEP)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/App
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/App

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVEDEP    = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = 


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 7.62
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$$$ARGV[0], $$$$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --
CP_NONEMPTY = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'cp_nonempty' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = COPY_EXTENDED_ATTRIBUTES_DISABLE=1 COPYFILE_DISABLE=1 tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = $(NOECHO) $(NOOP)
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = App-yasgg
DISTVNAME = App-yasgg-1.00


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"\
	PASTHRU_DEFINE='$(DEFINE) $(PASTHRU_DEFINE)'\
	PASTHRU_INC='$(INC) $(PASTHRU_INC)'


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir pure_all subdirs clean_subdirs makemakerdflt manifypods realclean_subdirs subdirs_dynamic subdirs_pure_nolink subdirs_static subdirs-test_dynamic subdirs-test_static test_dynamic test_static



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)

pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: dynamic
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) config $(INST_BOOT) $(INST_DYNAMIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all config  \
	bin/yasgg
	$(NOECHO) $(POD2MAN) --section=$(MAN1SECTION) --perm_rw=$(PERM_RW) -u \
	  bin/yasgg $(INST_MAN1DIR)/yasgg.$(MAN1EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:

EXE_FILES = bin/yasgg

pure_all :: $(INST_SCRIPT)/yasgg
	$(NOECHO) $(NOOP)

realclean ::
	$(RM_F) \
	  $(INST_SCRIPT)/yasgg 

$(INST_SCRIPT)/yasgg : bin/yasgg $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/yasgg
	$(CP) bin/yasgg $(INST_SCRIPT)/yasgg
	$(FIXIN) $(INST_SCRIPT)/yasgg
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/yasgg



# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  $(BASEEXT).bso $(BASEEXT).def \
	  $(BASEEXT).exp $(BASEEXT).x \
	  $(BOOTSTRAP) $(INST_ARCHAUTODIR)/extralibs.all \
	  $(INST_ARCHAUTODIR)/extralibs.ld $(MAKE_APERL_FILE) \
	  *$(LIB_EXT) *$(OBJ_EXT) \
	  *perl.core MYMETA.json \
	  MYMETA.yml blibdirs.ts \
	  core core.*perl.*.? \
	  core.[0-9] core.[0-9][0-9] \
	  core.[0-9][0-9][0-9] core.[0-9][0-9][0-9][0-9] \
	  core.[0-9][0-9][0-9][0-9][0-9] lib$(BASEEXT).def \
	  mon.out perl \
	  perl$(EXE_EXT) perl.exe \
	  perlmain.c pm_to_blib \
	  pm_to_blib.ts so_locations \
	  tmon.out 
	- $(RM_RF) \
	  blib 
	  $(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
# so clean is forced to complete before realclean_subdirs runs
realclean_subdirs : clean
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge :: realclean_subdirs
	- $(RM_F) \
	  $(FIRST_MAKEFILE) $(MAKEFILE_OLD) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '---' > META_new.yml
	$(NOECHO) $(ECHO) 'abstract: unknown' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:' >> META_new.yml
	$(NOECHO) $(ECHO) '  - '\''Christian Segundo <christian@segundo.io>'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'build_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  CSS::Sass: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::ShareDir::Install: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'configure_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'dynamic_config: 1' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by: '\''ExtUtils::MakeMaker version 7.62, CPAN::Meta::Converter version 2.150010'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'license: perl' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '  url: http://module-build.sourceforge.net/META-spec-v1.4.html' >> META_new.yml
	$(NOECHO) $(ECHO) '  version: '\''1.4'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'name: App-yasgg' >> META_new.yml
	$(NOECHO) $(ECHO) 'no_index:' >> META_new.yml
	$(NOECHO) $(ECHO) '  directory:' >> META_new.yml
	$(NOECHO) $(ECHO) '    - t' >> META_new.yml
	$(NOECHO) $(ECHO) '    - inc' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  CSS::Sass: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::Basename: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::Copy: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::Copy::Recursive: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::Find: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::ShareDir: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::Slurp: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Getopt::Long: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Image::Magick::Thumbnail: '\''0.06'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  MIME::Types: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Scalar::MoreUtils: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Template::Liquid: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  strictures: '\''2'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'resources:' >> META_new.yml
	$(NOECHO) $(ECHO) '  repository: https://git.segundo.io/yasgg/about/' >> META_new.yml
	$(NOECHO) $(ECHO) 'version: '\''1.00'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'x_serialization_backend: '\''CPAN::Meta::YAML version 0.018'\''' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml
	$(NOECHO) $(ECHO) Generating META.json
	$(NOECHO) $(ECHO) '{' > META_new.json
	$(NOECHO) $(ECHO) '   "abstract" : "unknown",' >> META_new.json
	$(NOECHO) $(ECHO) '   "author" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "Christian Segundo <christian@segundo.io>"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "dynamic_config" : 1,' >> META_new.json
	$(NOECHO) $(ECHO) '   "generated_by" : "ExtUtils::MakeMaker version 7.62, CPAN::Meta::Converter version 2.150010",' >> META_new.json
	$(NOECHO) $(ECHO) '   "license" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "perl_5"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "meta-spec" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "url" : "http://search.cpan.org/perldoc?CPAN::Meta::Spec",' >> META_new.json
	$(NOECHO) $(ECHO) '      "version" : 2' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "name" : "App-yasgg",' >> META_new.json
	$(NOECHO) $(ECHO) '   "no_index" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "directory" : [' >> META_new.json
	$(NOECHO) $(ECHO) '         "t",' >> META_new.json
	$(NOECHO) $(ECHO) '         "inc"' >> META_new.json
	$(NOECHO) $(ECHO) '      ]' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "prereqs" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "build" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "CSS::Sass" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::ShareDir::Install" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "configure" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "runtime" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "CSS::Sass" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::Basename" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::Copy" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::Copy::Recursive" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::Find" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::ShareDir" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::Slurp" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Getopt::Long" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Image::Magick::Thumbnail" : "0.06",' >> META_new.json
	$(NOECHO) $(ECHO) '            "MIME::Types" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Scalar::MoreUtils" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Template::Liquid" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "strictures" : "2"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      }' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "release_status" : "stable",' >> META_new.json
	$(NOECHO) $(ECHO) '   "resources" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "repository" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "url" : "https://git.segundo.io/yasgg/about/"' >> META_new.json
	$(NOECHO) $(ECHO) '      }' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "version" : "1.00",' >> META_new.json
	$(NOECHO) $(ECHO) '   "x_serialization_backend" : "JSON::PP version 4.06"' >> META_new.json
	$(NOECHO) $(ECHO) '}' >> META_new.json
	-$(NOECHO) $(MV) META_new.json $(DISTVNAME)/META.json


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).tar$(SUFFIX)_uu'

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).tar$(SUFFIX)'
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).zip'
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).shar'
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta 
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:
ci :
	$(ABSPERLRUN) -MExtUtils::Manifest=maniread -e '@all = sort keys %{ maniread() };' \
	  -e 'print(qq{Executing $(CI) @all\n});' \
	  -e 'system(qq{$(CI) @all}) == 0 or die $$!;' \
	  -e 'print(qq{Executing $(RCS_LABEL) ...\n});' \
	  -e 'system(qq{$(RCS_LABEL) @all}) == 0 or die $$!;' --


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -e q{META.yml};' \
	  -e 'eval { maniadd({q{META.yml} => q{Module YAML meta-data (added by MakeMaker)}}) }' \
	  -e '    or die "Could not add META.yml to MANIFEST: $${'\''@'\''}"' --
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -f q{META.json};' \
	  -e 'eval { maniadd({q{META.json} => q{Module JSON meta-data (added by MakeMaker)}}) }' \
	  -e '    or die "Could not add META.json to MANIFEST: $${'\''@'\''}"' --



# --- MakeMaker distsignature section:
distsignature : distmeta
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) }' \
	  -e '    or die "Could not add SIGNATURE to MANIFEST: $${'\''@'\''}"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read "$(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist" \
		write "$(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist" \
		"$(INST_LIB)" "$(DESTINSTALLPRIVLIB)" \
		"$(INST_ARCHLIB)" "$(DESTINSTALLARCHLIB)" \
		"$(INST_BIN)" "$(DESTINSTALLBIN)" \
		"$(INST_SCRIPT)" "$(DESTINSTALLSCRIPT)" \
		"$(INST_MAN1DIR)" "$(DESTINSTALLMAN1DIR)" \
		"$(INST_MAN3DIR)" "$(DESTINSTALLMAN3DIR)"
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		"$(SITEARCHEXP)/auto/$(FULLEXT)"


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read "$(SITEARCHEXP)/auto/$(FULLEXT)/.packlist" \
		write "$(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist" \
		"$(INST_LIB)" "$(DESTINSTALLSITELIB)" \
		"$(INST_ARCHLIB)" "$(DESTINSTALLSITEARCH)" \
		"$(INST_BIN)" "$(DESTINSTALLSITEBIN)" \
		"$(INST_SCRIPT)" "$(DESTINSTALLSITESCRIPT)" \
		"$(INST_MAN1DIR)" "$(DESTINSTALLSITEMAN1DIR)" \
		"$(INST_MAN3DIR)" "$(DESTINSTALLSITEMAN3DIR)"
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		"$(PERL_ARCHLIB)/auto/$(FULLEXT)"

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read "$(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist" \
		write "$(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist" \
		"$(INST_LIB)" "$(DESTINSTALLVENDORLIB)" \
		"$(INST_ARCHLIB)" "$(DESTINSTALLVENDORARCH)" \
		"$(INST_BIN)" "$(DESTINSTALLVENDORBIN)" \
		"$(INST_SCRIPT)" "$(DESTINSTALLVENDORSCRIPT)" \
		"$(INST_MAN1DIR)" "$(DESTINSTALLVENDORMAN1DIR)" \
		"$(INST_MAN3DIR)" "$(DESTINSTALLVENDORMAN3DIR)"


doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to "$(DESTINSTALLARCHLIB)/perllocal.pod"
	-$(NOECHO) $(MKPATH) "$(DESTINSTALLARCHLIB)"
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> "$(DESTINSTALLARCHLIB)/perllocal.pod"

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to "$(DESTINSTALLARCHLIB)/perllocal.pod"
	-$(NOECHO) $(MKPATH) "$(DESTINSTALLARCHLIB)"
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> "$(DESTINSTALLARCHLIB)/perllocal.pod"

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to "$(DESTINSTALLARCHLIB)/perllocal.pod"
	-$(NOECHO) $(MKPATH) "$(DESTINSTALLARCHLIB)"
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> "$(DESTINSTALLARCHLIB)/perllocal.pod"


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) "$(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist"

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) "$(SITEARCHEXP)/auto/$(FULLEXT)/.packlist"

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) "$(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist"


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = "/Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/bin/perl"
MAP_PERLINC   = "-Iblib/arch" "-Iblib/lib" "-I/Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/darwin-2level" "-I/Users/christian.segundo/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0"

$(MAP_TARGET) :: $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : static $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR="" \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:
TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = 
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)
	$(NOECHO) $(NOOP)

test :: $(TEST_TYPE)
	$(NOECHO) $(NOOP)

# Occasionally we may face this degenerate target:
test_ : test_dynamic
	$(NOECHO) $(NOOP)

subdirs-test_dynamic :: dynamic pure_all

testdb_dynamic test_dynamic :: subdirs-test_dynamic
	$(NOECHO) $(ECHO) 'No tests defined for $(NAME) extension.'

subdirs-test_static :: static pure_all

testdb_static test_static :: subdirs-test_static
	$(NOECHO) $(ECHO) 'No tests defined for $(NAME) extension.'



# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="App-yasgg" VERSION="1.00">' > App-yasgg.ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT></ABSTRACT>' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Christian Segundo &lt;christian@segundo.io&gt;</AUTHOR>' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="CSS::Sass" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="File::Basename" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="File::Copy" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="File::Copy::Recursive" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="File::Find" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="File::ShareDir" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="File::Slurp" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Getopt::Long" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Image::Magick::Thumbnail" VERSION="0.06" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="MIME::Types" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Scalar::MoreUtils" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Template::Liquid" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="strictures::" VERSION="2" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="darwin-2level-5.34" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> App-yasgg.ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> App-yasgg.ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:

# here so even if top_targets is overridden, these will still be defined
# gmake will silently still work if any are .PHONY-ed but nmake won't

static ::
	$(NOECHO) $(NOOP)

dynamic ::
	$(NOECHO) $(NOOP)

config ::
	$(NOECHO) $(NOOP)


# --- MakeMaker postamble section:
config::
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)'\'')' -- \
	  'share/html5up-lens/LICENSE.txt' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/LICENSE.txt' \
	  'share/html5up-lens/README.txt' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/README.txt' \
	  'share/html5up-lens/assets/css/fontawesome-all.min.css' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/fontawesome-all.min.css' \
	  'share/html5up-lens/assets/css/images/arrow-small.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/images/arrow-small.svg' \
	  'share/html5up-lens/assets/css/images/arrow.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/images/arrow.svg' \
	  'share/html5up-lens/assets/css/images/close-small-alt.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/images/close-small-alt.svg' \
	  'share/html5up-lens/assets/css/images/close-small.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/images/close-small.svg' \
	  'share/html5up-lens/assets/css/images/close.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/images/close.svg' \
	  'share/html5up-lens/assets/css/images/open-small.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/images/open-small.svg' \
	  'share/html5up-lens/assets/css/images/open.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/images/open.svg' \
	  'share/html5up-lens/assets/css/images/spinner.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/images/spinner.svg' \
	  'share/html5up-lens/assets/css/main.css' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/main.css' \
	  'share/html5up-lens/assets/css/noscript.css' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/css/noscript.css' \
	  'share/html5up-lens/assets/js/breakpoints.min.js' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/js/breakpoints.min.js' \
	  'share/html5up-lens/assets/js/browser.min.js' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/js/browser.min.js' \
	  'share/html5up-lens/assets/js/jquery.min.js' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/js/jquery.min.js' \
	  'share/html5up-lens/assets/js/main.js' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/js/main.js' \
	  'share/html5up-lens/assets/sass/base/_page.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/base/_page.scss' \
	  'share/html5up-lens/assets/sass/base/_reset.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/base/_reset.scss' \
	  'share/html5up-lens/assets/sass/base/_typography.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/base/_typography.scss' \
	  'share/html5up-lens/assets/sass/components/_actions.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/components/_actions.scss' \
	  'share/html5up-lens/assets/sass/components/_button.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/components/_button.scss' \
	  'share/html5up-lens/assets/sass/components/_form.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/components/_form.scss' \
	  'share/html5up-lens/assets/sass/components/_icon.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/components/_icon.scss' \
	  'share/html5up-lens/assets/sass/components/_icons.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/components/_icons.scss' \
	  'share/html5up-lens/assets/sass/components/_list.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/components/_list.scss' \
	  'share/html5up-lens/assets/sass/layout/_footer.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/layout/_footer.scss' \
	  'share/html5up-lens/assets/sass/layout/_header.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/layout/_header.scss' \
	  'share/html5up-lens/assets/sass/layout/_main.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/layout/_main.scss' \
	  'share/html5up-lens/assets/sass/layout/_thumbnails.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/layout/_thumbnails.scss' \
	  'share/html5up-lens/assets/sass/layout/_viewer.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/layout/_viewer.scss' \
	  'share/html5up-lens/assets/sass/libs/_breakpoints.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/libs/_breakpoints.scss' \
	  'share/html5up-lens/assets/sass/libs/_functions.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/libs/_functions.scss' \
	  'share/html5up-lens/assets/sass/libs/_mixins.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/libs/_mixins.scss' \
	  'share/html5up-lens/assets/sass/libs/_vars.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/libs/_vars.scss' \
	  'share/html5up-lens/assets/sass/libs/_vendor.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/libs/_vendor.scss' \
	  'share/html5up-lens/assets/sass/main.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/main.scss' \
	  'share/html5up-lens/assets/sass/noscript.scss' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/sass/noscript.scss' \
	  'share/html5up-lens/assets/webfonts/fa-brands-400.eot' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-brands-400.eot' \
	  'share/html5up-lens/assets/webfonts/fa-brands-400.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-brands-400.svg' \
	  'share/html5up-lens/assets/webfonts/fa-brands-400.ttf' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-brands-400.ttf' \
	  'share/html5up-lens/assets/webfonts/fa-brands-400.woff' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-brands-400.woff' \
	  'share/html5up-lens/assets/webfonts/fa-brands-400.woff2' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-brands-400.woff2' \
	  'share/html5up-lens/assets/webfonts/fa-regular-400.eot' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-regular-400.eot' \
	  'share/html5up-lens/assets/webfonts/fa-regular-400.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-regular-400.svg' \
	  'share/html5up-lens/assets/webfonts/fa-regular-400.ttf' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-regular-400.ttf' \
	  'share/html5up-lens/assets/webfonts/fa-regular-400.woff' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-regular-400.woff' \
	  'share/html5up-lens/assets/webfonts/fa-regular-400.woff2' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-regular-400.woff2' \
	  'share/html5up-lens/assets/webfonts/fa-solid-900.eot' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-solid-900.eot' \
	  'share/html5up-lens/assets/webfonts/fa-solid-900.svg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-solid-900.svg' \
	  'share/html5up-lens/assets/webfonts/fa-solid-900.ttf' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-solid-900.ttf' \
	  'share/html5up-lens/assets/webfonts/fa-solid-900.woff' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-solid-900.woff' \
	  'share/html5up-lens/assets/webfonts/fa-solid-900.woff2' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/assets/webfonts/fa-solid-900.woff2' \
	  'share/html5up-lens/images/fulls/01.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/01.jpg' \
	  'share/html5up-lens/images/fulls/02.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/02.jpg' \
	  'share/html5up-lens/images/fulls/03.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/03.jpg' \
	  'share/html5up-lens/images/fulls/04.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/04.jpg' \
	  'share/html5up-lens/images/fulls/05.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/05.jpg' \
	  'share/html5up-lens/images/fulls/06.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/06.jpg' \
	  'share/html5up-lens/images/fulls/07.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/07.jpg' \
	  'share/html5up-lens/images/fulls/08.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/08.jpg' \
	  'share/html5up-lens/images/fulls/09.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/09.jpg' \
	  'share/html5up-lens/images/fulls/10.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/10.jpg' \
	  'share/html5up-lens/images/fulls/11.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/11.jpg' \
	  'share/html5up-lens/images/fulls/12.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/fulls/12.jpg' \
	  'share/html5up-lens/images/thumbs/01.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/01.jpg' \
	  'share/html5up-lens/images/thumbs/02.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/02.jpg' \
	  'share/html5up-lens/images/thumbs/03.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/03.jpg' \
	  'share/html5up-lens/images/thumbs/04.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/04.jpg' \
	  'share/html5up-lens/images/thumbs/05.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/05.jpg' \
	  'share/html5up-lens/images/thumbs/06.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/06.jpg' \
	  'share/html5up-lens/images/thumbs/07.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/07.jpg' \
	  'share/html5up-lens/images/thumbs/08.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/08.jpg' \
	  'share/html5up-lens/images/thumbs/09.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/09.jpg' \
	  'share/html5up-lens/images/thumbs/10.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/10.jpg' \
	  'share/html5up-lens/images/thumbs/11.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/11.jpg' \
	  'share/html5up-lens/images/thumbs/12.jpg' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/images/thumbs/12.jpg' \
	  'share/html5up-lens/index.html' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/html5up-lens/index.html' \
	  'share/template.html' '$(INST_LIB)/auto/share/dist/$(DISTNAME)/template.html' 


# End.
