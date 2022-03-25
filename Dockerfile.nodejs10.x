FROM scratch

ADD 0e66dbd6af2f58d3cb332bb71a7b499830b5319e0d08c33152762c06a03af9fe.tar.xz /
ADD 0ef25f0c781d9d974d8507dfdf5b9bdac5a526fb60f0c0be3f1a3d6e6ae555ad.tar.xz /
ADD 1646990bc7b4d6ee916b09cc74f6b8bdb4a9e6f3696692c7fd48e5d5f1e5903e.tar.xz /
ADD a17494ab07dfd24aa3479f5e5f43558a24fcea1e835f54ef6aff4f8ca827ab48.tar.xz /
ADD b9b5cfd2002084a018660df848afa573aed0b16b296183fc32b08d2dc687510e.tar.xz /
ADD c153c008ba30440f11feea8717e566e1d0b03949dbdfa73b83054aee34119200.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
