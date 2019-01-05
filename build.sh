#!/usr/bin/env fish

rm -r ./build/
mkdir build

for f in (ls ./src/**/*.s)
    as -o $f -o ./build/$f.o
end

ld (ls ./build/*.o) -o ./build/exe
