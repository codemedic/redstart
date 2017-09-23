#!/bin/bash

_redstart() {
  ../../redstart --db-file x.db3 --base-db-file template.db3 --migrations-dir . "$@"
}

_redstart migrate-to 1
_redstart migrate-to 0
