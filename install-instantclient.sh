#!/usr/bin/env bash
unzip instantclient-basic-linux.x64-19.6.0.0.0dbru.zip -d /opt/oracle
unzip instantclient-sdk-linux.x64-19.6.0.0.0dbru.zip -d /opt/oracle
unzip instantclient-sqlplus-linux.x64-19.6.0.0.0dbru.zip -d /opt/oracle
unzip instantclient-tools-linux.x64-19.6.0.0.0dbru.zip -d /opt/oracle

rm -rf /opt/oracle/instantclient
mv /opt/oracle/instantclient_19_6 /opt/oracle/instantclient
ln -s /opt/oracle/instantclient/libclntsh.so.19.6 /opt/oracle/instantclient/libclntsh.so
ln -s /opt/oracle/instantclient/libocci.so.19.6 /opt/oracle/instantclient/libocci.so

sh ./setup-env.sh
cat ./setup-env.sh >> ~/.bashrc