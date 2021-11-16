#!/bin/bash

docker run -it --rm --network=host --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql icunhacorrea/kali-testing

