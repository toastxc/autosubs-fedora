FROM ivangabriele/tauri:debian-bookworm-20
WORKDIR /app

# install
RUN apt-get install clang cmake gcc  curl wget llvm -y
RUN rustup component add rustfmt
RUN rustup update
RUN apt update
RUN apt install libwebkit2gtk-4.1-dev \
  build-essential \
  curl \
  wget \
  file \
  ccache \
  libxdo-dev \
  libssl-dev \
  libayatana-appindicator3-dev \
  librsvg2-dev -y
# clean
COPY . .
RUN cargo clean --manifest-path src-tauri/Cargo.toml 
RUN npm ci
RUN npm install

# go
RUN npm run tauri build
CMD ["/bin/bash"]
