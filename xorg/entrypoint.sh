#!/bin/sh

udevd&
udevadm trigger&
su -l -c startx iaroki
