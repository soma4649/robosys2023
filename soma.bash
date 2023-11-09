#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Takeru Soma
# SPDX-License-Identifier: BSd-3-Clause

ng () {
      echo NG at Line $1
      ret = 1
}

ret=0

### I/O ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $ret 
