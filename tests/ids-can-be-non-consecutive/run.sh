#!/bin/bash

_redstart() {
  ../../redstart --db-file x.db3 --migrations-dir . "$@"
}

_redstart list-migrations

for i in 20080101 20081101 20091201 20091221 20100201; do
  _redstart migrate-to "$i"
done
