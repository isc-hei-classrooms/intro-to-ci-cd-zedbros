# Build stage
FROM debian:bookworm AS builder
# build + test
RUN g++ -o mainBinaryFile main.cpp

# Runtime stage
FROM debian:bookworm-slim
# runtime only