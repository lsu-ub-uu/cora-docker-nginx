FROM alpine:latest as builder

ARG BASENAME
ENV BASENAME=$BASENAME

RUN apk add --no-cache git nodejs npm

RUN npm install npm@latest -g

RUN git clone https://github.com/lsu-ub-uu/diva-react-spa.git

WORKDIR diva-react-spa

RUN git status

RUN git pull

RUN git log --name-status HEAD^..HEAD

RUN npm install

RUN npm run build:prod

FROM nginx:stable-alpine

COPY nginx/nginx.conf /etc/nginx/conf.d

COPY entrypoint.sh /entrypoint.sh

COPY --from=builder /diva-react-spa/dist /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD sh /entrypoint.sh