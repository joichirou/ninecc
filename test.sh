#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  ./9cc "$input" > tmp.s
  cc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

assert 0 0
assert 42 42
assert 13 "2+11"
assert 21 "5+20-4"
assert 21 " 5  +  20 - 4"
assert 47 '5+6*7'
assert 4 '(3+5)/2'
assert 10 '5*(9-6*2+(3+2))'
assert 10 '-10+20'
assert 0 '+20+-20'

echo OK