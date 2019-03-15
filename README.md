# refactor_practice_3

[![Build Status](https://travis-ci.org/juliusza/refactor_practice_3.svg)](https://travis-ci.org/juliusza/refactor_practice_3)

This is quite a challenge, because kitchen software stack is unmaintained for several years now. I'll do everything as described, except that I want to use docker driver which will work with travis CI.

# Answers

See ANSWER[n].txt files

# Changelog

* Initialize test pipeline using travis, docker and ansible kitchen
* Add Redis and OpenResty roles from ansible galaxy
* Got this setup working on Windows. No need to invoke travis every time I need to test
* Add shell verifier that invokes bats framework
* Add openresty init script for docker and make sure it is started