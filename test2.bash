#!/usr/bin/bash -xv 
# SPDX-FileCopyrightText: 2023 Takeru Soma
# SPDX-License-Identifier: BSD-3-clause

out=$(echo 千葉県 | ./prefectures)

[ "${out}" = 都道府県名を入力してください：千葉 ] || ng ${LINENO}
