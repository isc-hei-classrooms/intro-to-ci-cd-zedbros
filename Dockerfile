# Build stage
FROM debian:bookworm AS builder
# build + test
RUN 

# Runtime stage
FROM debian:bookworm-slim
# runtime only