FROM node:20-alpine
LABEL "repository"="https://github.com/NgoKimPhu/github-tag-action"
LABEL "homepage"="https://github.com/NgoKimPhu/github-tag-action"
LABEL "maintainer"="Ngo Kim Phu"

RUN apk --no-cache add bash git curl jq && npm install -g semver

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
