# refactor_practice_3

[![Build Status](https://travis-ci.org/juliusza/refactor_practice_3.svg)](https://travis-ci.org/juliusza/refactor_practice_3)

I'll do everything as described, except that I want to use docker driver which will work with travis CI.

# Answers

See ANSWER[n].txt files

# Changelog

* Initialize test pipeline using travis, docker and ansible kitchen
* Add Redis and OpenResty roles from ansible galaxy
* Got this setup working on my Windows dev env. No need to invoke travis every time I need to test
* Add shell verifier that invokes bats framework
* Add openresty init script for docker and make sure it is started
* Add a failing test for my custom lua endpoint
* Create lua block for connecting to redis
* Set redis password and store it in vault
* Found a way to integrate bats tests into kitchen properly

# TODO
yet unsolved issues:
* docker does work with upstart/systemd init scripts, redis wont start on redhat based systems
* I hate storing vault password in plain text, but this is a limitation of the kitchen framework. In real world I'd supply password via travis env variables.