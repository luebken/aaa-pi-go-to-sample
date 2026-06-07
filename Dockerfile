FROM node:22-bookworm-slim

WORKDIR /workspace

RUN apt-get update \
  && apt-get install -y --no-install-recommends git ca-certificates curl \
  && rm -rf /var/lib/apt/lists/*

COPY AGENTS.md /workspace/AGENTS.md

CMD ["sh", "-lc", "echo 'Pi-to-Go sample workspace is ready'; sleep infinity"]
