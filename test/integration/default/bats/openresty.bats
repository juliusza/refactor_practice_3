#!/usr/bin/env bats

teardown () {
    echo "$output"
}

BASE_URL=http://localhost/

@test "openresty is responsive" {
  run curl -s $BASE_URL/
  [[ $output =~ "OpenResty" ]]
}

@test "redis backend is responsive" {
  run curl -s $BASE_URL/redis
  echo "output = $output"
  [[ $output == "rocks" ]]
}
