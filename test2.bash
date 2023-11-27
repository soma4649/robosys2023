#!/usr/bin/bash -xv 
# SPDX-FileCopyrightText: 2023 Takeru Soma
# SPDX-License-Identifier: BSD-3-clause

ng () {
      echo NG at Line $1
      ret = 1
}

ret=0

out=$(echo 千葉県 | ./prefectures)

[ "${out}" = 千葉 ] || ng ${LINENO}

out=$(echo 神奈川県 | ./prefectures)

[ "${out}" = 横浜 ] || ng ${LINENO}

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

out=$(  | ./prefectures)
[ "$?" = 127 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(千葉県 | ./prefectures)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(1 | ./prefectures)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(./prefectures千葉県)
[ "$?" = 127 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(./prefectures1)
[ "$?" = 127 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

exit $ret
