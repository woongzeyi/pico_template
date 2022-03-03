init:
  mkdir build/
  cd build/; \
  cmake ..; \
  cp compile_commands.json ../

build:
  cd build/; make -j4

clean:
  rm -rf build/ compile_commands.json
