#!/usr/bin/env bats

@test "openresty is responsive" {
  result="$(curl http://localhost:8800/)"
  echo $result
  [[ $result == *"OpenResty"* ]]
}