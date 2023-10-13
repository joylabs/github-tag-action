FROM node:18-alpine
LABEL "repository"="https://github.com/JoyLabs/github-tag-action"
LABEL "homepage"="https://github.com/JoyLabs/github-tag-action"
LABEL "maintainer"="Memo team"

RUN apk --no-cache add bash git curl jq && npm install -g semver

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
