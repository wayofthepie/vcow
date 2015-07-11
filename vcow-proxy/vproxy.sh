#!/bin/sh
# Creates a copy on write proxy using overlay.
#
# See https://www.kernel.org/doc/Documentation/filesystems/overlayfs.txt for
# more information on overlay.

lower=/opt/ext/data
upper=/opt/ext/upper
workdir=/opt/ext/work
mountpath=/opt/data

mount -t overlay overlay -o lowerdir=${lower},upperdir=${upper},workdir=${workdir} /opt/data
