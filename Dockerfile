# Build stage
FROM debian:bookworm AS builder
# build + test
WORKDIR /docker
COPY . .

RUN apt-get update && apt-get install -y --no-install-recommends
RUN apt-get install -y build-essential cmake
RUN make release
RUN make test

# Runtime stage
FROM debian:bookworm-slim
# runtime only

RUN useradd -m non_root_user
USER non_root_user

COPY --from=builder /docker/build/main /docker/main
ENTRYPOINT [ "/docker/main" ]
