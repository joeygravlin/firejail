# Firejail profile for bleachbit
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/bleachbit.local
# Persistent global definitions
include /etc/firejail/globals.local

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-interpreters.inc
include /etc/firejail/disable-passwdmgr.inc
# include /etc/firejail/disable-programs.inc

caps.drop all
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none

private-dev
# private-tmp

# memory-deny-write-execute breaks some systems, see issue #1850
# memory-deny-write-execute
noexec ${HOME}
noexec /tmp
