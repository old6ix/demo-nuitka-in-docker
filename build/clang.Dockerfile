FROM python:3.9.15-bullseye AS builder

WORKDIR /app/

# Install needed softwares for nuitka
RUN sed -i s/deb.debian.org/mirrors.huaweicloud.com/g /etc/apt/sources.list \
    && apt-get update -y \
    && apt-get install --no-install-recommends -y \
        patchelf \
        ccache \
        clang

COPY . .

# Install pip requirements
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install -r requirements.build.txt

# Compile with nuitka
# Result will be output to /build/main.dist
RUN python -m nuitka \
    --clang \
    --standalone \
    --remove-output --output-dir=/build \
    main.py


FROM ubuntu:22.10

ENV LANG=C.UTF-8

WORKDIR /root/

COPY --from=builder /build/main.dist ./

CMD ["./main"]
