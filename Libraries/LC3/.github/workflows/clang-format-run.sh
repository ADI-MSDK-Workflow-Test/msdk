#!/bin/bash

CLANG_VERSION=14

# Remove the submodules
set +e
git submodule deinit --force --all
set -e

# Find the C files
CFILES=$(find . -name  "*.c" \( -not -wholename "*/src/*" -a -not -wholename "*/fuzzer/*" -a -not -wholename "*/include/*" -a -not -wholename "*/tools/*" -a -not -wholename "*/test/*" \))

for c_file in ${CFILES}
do
  # Format the files, this will turn while(1); into while(1)\n;
  clang-format-${CLANG_VERSION} --verbose -style=file -i ${c_file}

  # Remove single line ';' and replace with "{}"
  perl -i -pe 's/\s+;\s/{}\n/' ${c_file}

  # Re-format the files
  clang-format-${CLANG_VERSION} --verbose -style=file -i ${c_file}

done


# Reformat all of the header files
HFILES=$(find . -iname "*.h" \( -not -wholename "*/src/*" -a -not -wholename "*/fuzzer/*" -a -not -wholename "*/include/*" -a -not -wholename "*/tools/*" -a -not -wholename "*/test/*" \))
for h_file in ${HFILES}
do
  clang-format-${CLANG_VERSION} --verbose -style=file -i ${h_file}
done
