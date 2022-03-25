FROM scratch
ADD x86_64/32e4fd5eaf56884f5851b04b1ab43284a6819dfae9d309596d784c98e4007c6e.tar.xz /
ADD x86_64/3311aa5353b70b15db1a771c5bededf8b75edb3e6267fef5ff39663714c7da92.tar.xz /
ADD x86_64/5608415538cd27ffacf1c025c4f9a471c1f517de9df729d939a828c0a83462e4.tar.xz /
ADD x86_64/9b3e170dbb0c2e8c7404212eaa1ee6aab05966f8307ee5d7ab9a283fddd24c9b.tar.xz /
ADD x86_64/e54bff1ad0dc6b8054d84d15d4e5f3925ba37fa72c517ba6b14f0a4bc43d838b.tar.xz /
ADD x86_64/f777e0f2be7e7605ee98927f9e00d3fcf97bb3fcb3b3cec249985ab7f55a69de.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
