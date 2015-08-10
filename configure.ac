dnl -*- Mode: Autoconf; tab-width: 4; indent-tabs-mode: nil; -*-
dnl vi: set tabstop=4 shiftwidth=4 expandtab syntax=m4:
dnl This Source Code Form is subject to the terms of the Mozilla Public
dnl License, v. 2.0. If a copy of the MPL was not distributed with this
dnl file, You can obtain one at http://mozilla.org/MPL/2.0/.

AC_PREREQ(2.13)
AC_INIT(MathML Logo, 1.0)
AC_CONFIG_SRCDIR(mathml-logo.svg)

AC_CHECK_PROGS(INKSCAPE, inkscape)
AC_CHECK_PROGS(SCOUR, scour)
AC_CHECK_PROGS(SFNT2WOFF, sfnt2woff)
AC_CHECK_PROGS(UNZIP, unzip)
AC_CHECK_PROGS(XSLTPROC, xsltproc)
AC_CHECK_PROGS(WGET, wget)
AC_CHECK_PROGS(ZIP, zip)

if test -z "$INKSCAPE" ||
   test -z "$SCOUR" ||
   test -z "$SFNT2WOFF" ||
   test -z "$UNZIP" ||
   test -z "$XSLTPROC" ||
   test -z "$WGET" ||
   test -z "$ZIP"; then
   AC_MSG_ERROR(Missing dependencies. Please read the README.md file.)
fi

AC_CONFIG_FILES(Makefile)
AC_OUTPUT
