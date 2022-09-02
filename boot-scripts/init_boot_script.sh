#!/usr/bin/env bash

# 에러가 발생할 경우 아래 함수 실행
function on_error() {
  local lineno=$1
  local msg=$2
  echo "error found in line $lineno: $msg" | logger
}

# 에러 발생 시 로그 발생시키도록 트리거 발생
trap 'on_error ${LINENO} "$BASH_COMMAND"' ERR

# 사용해야될 명령어 나열
ls /test

cat /test/composit
