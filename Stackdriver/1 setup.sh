#!/bin/bash -xv

dd if=/dev/urandom | gzip -9 >> /dev/null &