# not using `node:alpine` because it doesn't support riscv64
FROM alpine:latest

ENTRYPOINT ["bash-language-server"]

CMD ["start"]

RUN apk add --no-cache nodejs npm shellcheck shfmt && \
  npm install --global bash-language-server

# running as unprivileged user not possible because: language servers need permission to access files
