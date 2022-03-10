init: pico-sdk/pico_sdk_init.cmake clean
	mkdir build/
	cd build/; \
	cmake ..; \
	cp compile_commands.json ../

debug_init: pico-sdk/pico_sdk_init.cmake clean
	mkdir build/
	cd build/; \
	cmake -DCMAKE_BUILD_TYPE=Debug ..; \
	cp compile_commands.json ../

pico-sdk/pico_sdk_init.cmake:
	git submodule update --init
	cd pico-sdk; git submodule update --init

compile: 
	cd build/; make -j4

clean:
	rm -rf build/ compile_commands.json
