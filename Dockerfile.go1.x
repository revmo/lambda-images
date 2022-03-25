FROM scratch

ADD 554858d4548ffe46df9036861df876eb38e8c588e00d8b064b060052450cac0d.tar.xz /
ADD 6a6b39a562346984bd7669efdd145a1d6bc1d788034488e4e7d4c6702060f04d.tar.xz /
ADD dc689eb404ef41776801b6f2b645000757d67300d8780ec61ac62ac1b1c7b85c.tar.xz /
ADD e141ade3a6602b1ae06d00785a10401022dc0568ce4e36b3e9b8d828b7aa5ea5.tar.xz /
ADD fb3d5820e9af4a80436ad261e2ed65235a4562d239c3f1633675f4e9b6938d66.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
