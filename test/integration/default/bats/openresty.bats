#!/usr/bin/env bats

teardown () {
    echo "output = $output"
}

BASE_URL=http://localhost/

@test "redis is configured with password" {
  run redis-cli set foo bar
  [ "$status" -eq 0 ]
  [[ $output =~ "NOAUTH" ]]
}

@test "openresty is responsive" {
  run curl -s $BASE_URL/
  [[ $output =~ "OpenResty" ]]
}

@test "redis backend is responsive" {
  run curl -s $BASE_URL/redis
  [[ $output == "rocks" ]]
}
