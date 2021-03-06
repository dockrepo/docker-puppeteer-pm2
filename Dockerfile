FROM keymetrics/pm2:12-slim
# FROM node:12-slim
LABEL maintainer="Zyao89 <zyao89@gmail.com>"

RUN apt-get update \
 && apt-get install -yq \
      gconf-service \
      libasound2 \
      libatk1.0-0 \
      libc6 \
      libcairo2 \
      libcups2 \
      libdbus-1-3 \
      libexpat1 \
      libfontconfig1 \
      libgcc1 \
      libgconf-2-4 \
      libgdk-pixbuf2.0-0 \
      libglib2.0-0 \
      libgtk-3-0 \
      libnspr4 \
      libpango-1.0-0 \
      libpangocairo-1.0-0 \
      libstdc++6 \
      libx11-6 \
      libx11-xcb1 \
      libxcb1 \
      libxcomposite1 \
      libxcursor1 \
      libxdamage1 \
      libxext6 \
      libxfixes3 \
      libxi6 \
      libxrandr2 \
      libxrender1 \
      libxss1 \
      libxtst6 \
      ca-certificates \
      fonts-liberation \
      libappindicator1 \
      libnss3 \
      lsb-release \
      xdg-utils \
      wget \
      apt-transport-https git dumb-init python3 build-essential --no-install-recommends


# fonts
COPY ./fonts /usr/share/fonts/custom
ENV CUSTOM_FONTS_ROOT=/usr/share/fonts/custom

# puppeteer
# RUN npm install -g puppeteer --unsafe-perm=true --allow-root
ENV PUPPETEER_SKIP_DOWNLOAD=true
