#!/usr/bin/env bash

[[ -v VERBOSE ]] && set -x
set -eu

target="${1}/data/raw"

echo delegated-afrinic-extended-latest
curl -L --retry 5 --max-time 180 -f -o "${target}/delegated-afrinic-extended-latest.txt" https://ftp.afrinic.net/pub/stats/afrinic/delegated-afrinic-extended-latest || true

echo delegated-apnic-extended-latest
curl -L --retry 5 --max-time 180 -f -o "${target}/delegated-apnic-extended-latest.txt" https://ftp.apnic.net/pub/stats/apnic/delegated-apnic-extended-latest || true

echo delegated-arin-extended-latest
curl -L --retry 5 --max-time 180 -f -o "${target}/delegated-arin-extended-latest.txt" https://ftp.arin.net/pub/stats/arin/delegated-arin-extended-latest || true

echo delegated-lacnic-extended-latest
curl -L --retry 5 --max-time 180 -f -o "${target}/delegated-lacnic-extended-latest.txt" https://ftp.lacnic.net/pub/stats/lacnic/delegated-lacnic-extended-latest || true

echo delegated-ripencc-extended-latest
curl -L --retry 5 --max-time 180 -o "${target}/delegated-ripencc-extended-latest.txt" https://ftp.ripe.net/pub/stats/ripencc/delegated-ripencc-extended-latest || true

echo ripe-ncc-allocated-list
curl -L --retry 5 --max-time 180 -o "${target}/ripe-ncc-alloclist.txt" https://ftp.ripe.net/pub/stats/ripencc/membership/alloclist.txt || true

echo asn-listing
curl -L --retry 5 --max-time 180 -o "${target}/autnums.html" https://bgp.potaroo.net/cidr/autnums.html || true
