#!/usr/bin/env bats

BASE_URL=http://localhost:8800

@test "openresty is responsive" {
  result="$(curl $BASE_URL/)"
  [[ $result == *"OpenResty"* ]]
}

@test "redis backend is responsive" {
  result="$(curl $BASE_URL/redis)"
  [[ $result == "rocks" ]]
}