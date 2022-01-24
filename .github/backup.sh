#!/usr/bin/env bash

set -e

target="data/raw/"

echo delegated-afrinic-extended-latest
curl -o "${target}/delegated-afrinic-extended-latest.txt" ftp://ftp.afrinic.net/pub/stats/afrinic/delegated-afrinic-extended-latest

echo delegated-apnic-extended-latest
curl -o "${target}/delegated-apnic-extended-latest.txt" ftp://ftp.apnic.net/pub/stats/apnic/delegated-apnic-extended-latest

echo delegated-arin-extended-latest
curl -o "${target}/delegated-arin-extended-latest.txt" ftp://ftp.arin.net/pub/stats/arin/delegated-arin-extended-latest

echo delegated-lacnic-extended-latest
curl -o "${target}/delegated-lacnic-extended-latest.txt" ftp://ftp.lacnic.net/pub/stats/lacnic/delegated-lacnic-extended-latest

echo delegated-ripencc-extended-latest
curl -o "${target}/delegated-ripencc-extended-latest.txt" ftp://ftp.ripe.net/pub/stats/ripencc/delegated-ripencc-extended-latest