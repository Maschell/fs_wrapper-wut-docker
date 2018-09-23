FROM wiiuwut/core:1.0.0-beta4

MAINTAINER Maschell <maschell@gmx.de>

RUN mkdir /artifacts

# Get dependencies
COPY --from=wiiuwut/libutils:0.1 /artifacts $WUT_ROOT

RUN git clone https://github.com/Maschell/fs_wrapper -b wut && cd fs_wrapper && git checkout 822d116e81d1d6dbda9b23923bb689150b17e401

RUN cd fs_wrapper && mkdir build && cd build && \
	cmake -DCMAKE_TOOLCHAIN_FILE=$WUT_ROOT/share/wut.toolchain.cmake -DCMAKE_INSTALL_PREFIX=/artifacts ../  &&\
	make install

RUN rm -rf fs_wrapper

WORKDIR /artifacts