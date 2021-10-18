mkdir build
cd build
emcmake cmake ../sentencepiece
emmake make sentencepiece-static
emcc --bind -o ../src/sentencepiece.js -Wl,--whole-archive src/libsentencepiece.a -Wl,--no-whole-archive ../bindings/sentencepiece.cpp -O3 -s EXPORT_ES6=1 -s MODULARIZE=1 -s SINGLE_FILE=1 -s ASYNCIFY=1 -s FORCE_FILESYSTEM=1
cd ..
