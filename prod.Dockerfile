FROM node:lts

ARG GITHUB_PERSONAL_TOKEN 

WORKDIR /usr/src/app

# clone from git using deploy key
RUN git clone https://${GITHUB_PERSONAL_TOKEN}@github.com/nitzano/gatsby-source-hashnode.git


# build
WORKDIR /usr/src/app/gatsby-source-hashnode

RUN yarn install

RUN NODE_ENV=production yarn build

CMD /bin/sh
