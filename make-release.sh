#!/usr/bin/env bash
( cmake -Bcmake-build-release -DCMAKE_BUILD_TYPE="Release" -DBUILD_SHARED_LIBS=OFF . &&
  cd cmake-build-release &&
  make -j6 ) || exit 1

pwd
rm -r xouranlpp
mkdir -p ./xouranlpp/bin/
cp -r\
  resources \
  ui\
  cmake-build-release/xournalpp\
  xouranlpp/bin/

echo DONE!