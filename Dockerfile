FROM python:latest
RUN apt-get update && apt-get install -y curl build-essential pkg-config libssl-dev  && rm -rf /var/lib/apt/lists/*
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
