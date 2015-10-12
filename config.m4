dnl $Id$
dnl config.m4 for extension my_string

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

 PHP_ARG_WITH(my_string, for my_string support,
 Make sure that the comment is aligned:
 [  --with-my_string             Include my_string support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(my_string, whether to enable my_string support,
dnl Make sure that the comment is aligned:
dnl [  --enable-my_string           Enable my_string support])

if test "$PHP_MY_STRING" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-my_string -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/my_string.h"  # you most likely want to change this
  dnl if test -r $PHP_MY_STRING/$SEARCH_FOR; then # path given as parameter
  dnl   MY_STRING_DIR=$PHP_MY_STRING
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for my_string files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       MY_STRING_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$MY_STRING_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the my_string distribution])
  dnl fi

  dnl # --with-my_string -> add include path
  dnl PHP_ADD_INCLUDE($MY_STRING_DIR/include)

  dnl # --with-my_string -> check for lib and symbol presence
  dnl LIBNAME=my_string # you may want to change this
  dnl LIBSYMBOL=my_string # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $MY_STRING_DIR/$PHP_LIBDIR, MY_STRING_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_MY_STRINGLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong my_string lib version or lib not found])
  dnl ],[
  dnl   -L$MY_STRING_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(MY_STRING_SHARED_LIBADD)

  PHP_NEW_EXTENSION(my_string, my_string.c, $ext_shared)
fi
