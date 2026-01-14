# Build stage
FROM debian:bookworm AS builder
# build + test

# Runtime stage
FROM debian:bookworm-slim
# runtime only