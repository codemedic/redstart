#!/bin/bash

_redstart() {
  ../../redstart --db-file x.db3 --migrations-dir . "$@"
}

_redstart list-migrations

for ((i=1; i<=15; i++)); do
  _redstart migrate-to "$i"
done

for ((i=15; i>=1; i--)); do
  _redstart migrate-to "$i"
done

_redstart migrate-to 0
