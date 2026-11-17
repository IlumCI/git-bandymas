#!/usr/bin/env bash
# tikrinti.sh - checks the exercises for a lesson
# Usage: bash tests/tikrinti.sh <exercise-number>

lesson="${1:-1}"

pass=0
fail=0

check() {
  if [ "$1" -eq 0 ]; then
    echo "PASS: $2"
    pass=$((pass + 1))
  else
    echo "FAIL: $2"
    fail=$((fail + 1))
  fi
}

out1="$(bash exercises/01_greet.sh Ada)"
check "$([ "$out1" = "Hello, Ada!" ] && echo 0 || echo 1)" "01_greet.sh Ada -> Hello, Ada!"

out2="$(bash exercises/01_greet.sh)"
check "$([ "$out2" = "Hello, stranger!" ] && echo 0 || echo 1)" "01_greet.sh -> Hello, stranger!"

check "$([ -x exercises/01_greet.sh ] && echo 0 || echo 1)" "01_greet.sh is executable"

echo "Checks passed: $pass, failed: $fail"
[ "$fail" -eq 0 ] && echo "All checks green" && exit 0
exit 1
