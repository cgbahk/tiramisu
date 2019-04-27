all:

require:
	apt update
	apt install -y autoconf libtool cmake python zlib1g-dev

submodule:
	utils/scripts/install_submodules.sh ${CURDIR}

build:
	mkdir -p build/

clean:
	rm -rf build/

configure: build
	cd build && cmake ..

tiramisu: configure
	cd build && make -j4 tiramisu

tutorials: tiramisu
	cd build && make tutorials

doc:
	cd build && make doc
