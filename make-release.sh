#!/usr/bin/env sh
( cmake -Bcmake-build-release -DCMAKE_BUILD_TYPE="Release" -DLUA_LIBRARIES="/usr/lib/lua5.4/liblua.so" -DBUILD_SHARED_LIBS=True . &&
  cd cmake-build-release &&
  make -j6 ) || exit 1

pwd
rm -r xouranlpp
mkdir -p ./xouranlpp/bin/
cp -r\
  resources \
  ui\
  cmake-build-release/xournalpp\
  plugins\
  xouranlpp/bin/

echo DONE!
