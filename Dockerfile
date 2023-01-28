FROM numpy/numpy-gitpod

RUN set -x && \
    pip3 install --verbose --no-cache-dir --disable-pip-version-check --no-color --no-python-version-warning \
      glitch-this

WORKDIR /home/gitpod
ENTRYPOINT ["/home/gitpod/.local/bin/glitch_this"]
