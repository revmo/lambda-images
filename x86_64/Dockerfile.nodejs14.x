FROM scratch

ADD 27dd325f35f4ffa15cd82284742f15e9b15de146b031a0d0784874aac237b450.tar.xz /
ADD 32e4fd5eaf56884f5851b04b1ab43284a6819dfae9d309596d784c98e4007c6e.tar.xz /
ADD 3b54a08c1fd46a057f5d0b5de0fde769b61f68bf1ce1b441796e637180b99451.tar.xz /
ADD 6c6c016ab9a0e4c447c901208ce2cc2794a586006483f3281ff7904f40c1ccae.tar.xz /
ADD 8d171a1fe2167aa21dcfe32bed796a51936a9271a858d6faeb017a2681c8f122.tar.xz /
ADD a6e102abcc351eaa2d84b20f7d0a65313d6daff4e76d5726d8e4247606be5a00.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
