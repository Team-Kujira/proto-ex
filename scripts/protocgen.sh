#!/usr/bin/env bash

set -eo pipefail

echo "Generating gogo proto code"
cd protos
proto_dirs=$(find ../protos -type d -name 'proto' -exec sh -c 'find "$1" -name "*.proto"' _ {} \; | xargs -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
    for file in $(find "${dir}" -maxdepth 1 -name '*.proto'); do
        if grep "option go_package" $file &> /dev/null ; then
            buf generate --template buf.gen.gogo.yml $file
        fi
    done
done

