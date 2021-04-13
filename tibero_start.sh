#!/bin/bash

echo "================="
echo "Starting Tibero"
su - tibero -c "/home/tibero/tibero5/bin/tbboot; wait 10sec;"

echo "/bin/bash always"
/bin/bash