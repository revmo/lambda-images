FROM scratch

ADD 0b8fb8377e99712c447cfa9190bac1b037f746ef9371de1944deb335d8cdfb51.tar.xz /
ADD 5cb8e4aaf45d790fdae3dc6a46bcff4fcbdca27572c3bf14a5fb95f31fafb41a.tar.xz /
ADD 6378d6adc17f4b8f398dc886dcab7dccb8e670618350e27d98c1d8417aebebe4.tar.xz /
ADD 8e16e86c023d401ac910261d2d05052dabc750f1b1b43b32eb1a0e6eb215577d.tar.xz /
ADD c4889314de7aec45578321f975a73b3d9fef899afbe9ab49f3f00d04ccc69c78.tar.xz /
ADD e6ec9dac11479178b6e002d8e42caf617e4cc022cf7d63e29dc15134798a683c.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
