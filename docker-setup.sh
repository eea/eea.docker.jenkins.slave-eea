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
  ImageMagick
  libaprutil1-dev
  libc6-dev
  libcurl4-openssl-dev
  libexpat1-dev
  libjpeg-dev
  libjpeg62
  libpng12-0
  libmagickcore-6.q16-2-extra
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
  python-docutils
  python-testtools
  ssh-client
  subversion
  tex-gyre
  unzip
  wget
  wv
  xpdf
  zlib1g-dev
  ttf-mscorefonts-installer
"

echo "========================================================================="
echo "Installing $runDeps"
echo "========================================================================="

sed -i 's|main|main contrib|' /etc/apt/sources.list
apt-get update
apt-get install -y --no-install-recommends $runDeps
rm -rf /var/lib/apt/lists/*

echo "========================================================================="
echo "Installing wkhtmltopdf 0.12.2.4"
echo "========================================================================="

curl -o /tmp/wkhtmltopdf-0.12.2.4.tgz -SL https://svn.eionet.europa.eu/repositories/Zope/trunk/wk/wkhtmltopdf-0.12.2.4.tgz
echo "9482532471f61084797a61b57d83eb85 /tmp/wkhtmltopdf-0.12.2.4.tgz" | md5sum -c -
tar -zxvf /tmp/wkhtmltopdf-0.12.2.4.tgz -C /usr/bin/
rm -vf /tmp/wkhtmltopdf-0.12.2.4.tgz

echo "========================================================================="
echo "Fix zlib path"
echo "========================================================================="

ln -s /lib/x86_64-linux-gnu/libz.so.1 /lib/libz.so

echo "========================================================================="
echo "Installing Python 2.4"
echo "========================================================================="

cd /tmp
curl -o Python-2.4.6.tgz -SL https://www.python.org/ftp/python/2.4.6/Python-2.4.6.tgz
echo "7564b2b142b1b8345cd5358b7aaaa482 /tmp/Python-2.4.6.tgz" | md5sum -c -
tar -zxvf Python-2.4.6.tgz
cd Python-2.4.6
./configure
make
make install
rm -rf /tmp/Python*

echo "========================================================================="
echo "Installing Python 2.6"
echo "========================================================================="

cd /tmp
curl -o Python-2.6.9.tgz -SL https://www.python.org/ftp/python/2.6.9/Python-2.6.9.tgz
echo "bddbd64bf6f5344fc55bbe49a72fe4f3 /tmp/Python-2.6.9.tgz" | md5sum -c -
tar -zxvf Python-2.6.9.tgz
cd Python-2.6.9
./configure
make
make install
rm -rf /tmp/Python*

echo "========================================================================="
echo "Fixing default python"
echo "========================================================================="

mv /usr/local/bin/python /usr/local/bin/python-2.6
