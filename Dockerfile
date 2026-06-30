
# Stage 1: Builder
FROM alpine:3.20 AS builder

WORKDIR /build
COPY app.sh .
RUN chmod +x app.sh

# Stage 2: Runtime
FROM alpine:3.20

WORKDIR /app
COPY --from=builder /build/app.sh .

ENTRYPOINT ["./app.sh"]

