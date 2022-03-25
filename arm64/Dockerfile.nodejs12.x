FROM scratch

ADD 6378d6adc17f4b8f398dc886dcab7dccb8e670618350e27d98c1d8417aebebe4.tar.xz /
ADD 68c9c297dda9cdc17737efe0a6102148d5eeda42d6b1791ec66ee167ccc33a20.tar.xz /
ADD a3dbe7bccdec8bef4b99740c0ecd5d145a34951b74d7c816b5444b2b0a2b225b.tar.xz /
ADD d44299cca93205efe045ff33baf2e665669fe853060ca0b89596305670365930.tar.xz /
ADD de67c14572689fe3b98c033d457af047a6f5b6c491d0e13ea72f89f63b96c730.tar.xz /
ADD ea97524eee52e0c7d749575562a15055a311eecaff8376d3008b8c66b53908d7.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
