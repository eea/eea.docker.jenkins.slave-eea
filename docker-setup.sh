#!/usr/bin/env bash
set -e


runDeps="
  build-essential
  cron
  curl
  make
  tar
  fontconfig
  ghostscript
  git
  gsfonts
  graphviz
  graphviz-dev
  htop
  libaprutil1-dev
  libc6-dev
  libcurl4-openssl-dev
  libexpat1-dev
  libjpeg-dev
  libjpeg62
  libmagickcore-6.q16-3-extra
  libmemcached-dev
  libpq-dev
  libreadline-dev
  libsasl2-dev
  libssl-dev
  libsvn-dev
  libxml2-dev
  libxslt-dev
  libz-dev
  pdftk
  poppler-utils
  python3-pip
  python3-dev
  python-dev
  python2-dev
  ssh-client
  subversion
  tex-gyre
  unzip
  wget
  wv
  xpdf
  zlib1g-dev
  calibre
  xvfb
  imagemagick
  libpng16-16
  apt-transport-https
  lsb-release
"

echo "========================================================================="
echo "Installing $runDeps"
echo "========================================================================="

sed -i 's|main|main contrib|' /etc/apt/sources.list
apt-get update
apt-get install -y --no-install-recommends $runDeps

pip install docutils testtools

echo "========================================================================="
echo "Installing NodeJS"
echo "========================================================================="

curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
echo 'deb https://deb.nodesource.com/node_10.x stretch main' > /etc/apt/sources.list.d/nodesource.list
echo 'deb-src https://deb.nodesource.com/node_10.x stretch main' >> /etc/apt/sources.list.d/nodesource.list
apt-get update
apt install -y --no-install-recommends nodejs

echo "========================================================================="
echo "Installing wkhtmltopdf 0.12.2"
echo "========================================================================="

curl -o /tmp/wkhtmltopdf.tgz -SL https://github.com/eea/eea.docker.kgs/raw/master/packages/wkhtmltopdf-0.12.4.tgz
tar -zxvf /tmp/wkhtmltopdf.tgz -C /tmp/
mv -v /tmp/wkhtmltopdf /tmp/wkhtmltoimage /usr/bin/

echo "========================================================================="
echo "Cleanup"
echo "========================================================================="

rm -rf /var/lib/apt/lists/* /tmp/*


