FROM python:3-alpine AS builder

ARG GITMAN_VERSION=3.0.1

RUN pip install gitman==${GITMAN_VERSION} --no-cache-dir
RUN mkdir /redstart
RUN apk --no-cache add git

COPY . /redstart/
RUN (\
    set -eux; \
    cd /redstart; \
    gitman install; \
)


FROM centos:7

COPY --from=builder /redstart /redstart

ENTRYPOINT ["/redstart/redstart"]
