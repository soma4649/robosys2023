#!/usr/bin/bash -xv 
# SPDX-FileCopyrightText: 2023 Takeru Soma
# SPDX-License-Identifier: BSD-3-clause

ng () {
      echo NG at Line $1
      ret = 1
}

ret=0

out=$(echo 千葉県 | ./prefectures)

[ "${out}" = 都道府県名を入力してください：千葉 ] || ng ${LINENO}

out=$(./prefectures)
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


### 間違えた入力　###

out=$(echo あ | ./prefectures)
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo a | ./prefectures) 
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo  | ./prefectures)
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $ret
