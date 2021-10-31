#   Copyright (C) 2018  The Freeciv-web project
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Affero General Public License for more details.
#
#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Installation of out-of-package-manager components

declare -a ext_installed

ext_install_tomcat9 () {
  local TOMCAT_URL
  local TMPFILE

  echo "==== Installing tomcat9 ===="

  TOMCAT_URL=$(curl -LsS 'https://tomcat.apache.org/download-90.cgi' | sed -n 's/^.*href="\([^"]*bin\/apache-tomcat-[0-9.]*tar\.gz\)".*/\1/p' | head -n 1)
  if [ -z "${TOMCAT_URL}" ]; then
    echo >&2 "Couldn't fetch download URL"
    exit 1
  fi

  echo "Downloading tomcat9 from ${TOMCAT_URL}"
  TMPFILE=$(mktemp -t tomcat9.XXXX.tar.gz)
  curl -LsS -o "${TMPFILE}" "${TOMCAT_URL}"

  cd /var/lib
  sudo tar -xzf "${TMPFILE}"
  sudo mv apache-tomcat-9.* tomcat9
  rm "${TMPFILE}"

  if ! getent group tomcat9 > /dev/null 2>&1 ; then
    sudo groupadd --system tomcat9
  fi
  if ! id tomcat9 > /dev/null 2>&1 ; then
    sudo useradd --system --home /var/lib/tomcat9 -g tomcat9 --shell /bin/false tomcat9
  fi

  sudo chgrp -R tomcat9 /var/lib/tomcat9
  sudo chmod -R g+r /var/lib/tomcat9/conf
  sudo chmod g+x /var/lib/tomcat9/conf
  sudo chown -R tomcat9 /var/lib/tomcat9/{webapps,work,temp,logs}
  sudo chown tomcat9 /var/lib/tomcat9/bin/catalina.sh
  sudo chmod u+s /var/lib/tomcat9/bin/catalina.sh
  sudo setfacl -m d:g:tomcat9:rwX /var/lib/tomcat9/webapps
  sudo setfacl -m d:g:docker:rwX /var/lib/tomcat9/webapps

  echo "export CATALINA_HOME=\"/var/lib/tomcat9\"" >> ~/.bashrc
  ext_installed[${#ext_installed[@]}]="tomcat9"
}


