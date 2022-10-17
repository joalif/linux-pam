#!/bin/bash

find -type f -name "*.so" -print0 | xargs -I '{}' -0 cp '{}' temp

mv temp/* /lib/x86_64-linux-gnu/security/

cp ./libpamc/.libs/libpamc.so.0.82.1 /lib/x86_64-linux-gnu/
cp ./libpam/.libs/libpam.so.0.85.1 /lib/x86_64-linux-gnu/
cp ./libpam_misc/.libs/libpam_misc.so.0.82.1 /lib/x86_64-linux-gnu/
