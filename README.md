# autosubs-fedora

## to reproduce error
```bash
git clone https://github.com/tmoroney/auto-subs.git
git clone https://github.com/toastxc/autosubs-fedora.git

cp autosubs-fedora/.dockerignore  auto-subs/AutoSubs-App/
cp autosubs-fedora/Dockerfile  auto-subs/AutoSubs-App/
cp autosubs-fedora/docker-compose.yml  auto-subs/AutoSubs-App/
cd auto-subs/AutoSubs-App/

time docker-compose up -d
