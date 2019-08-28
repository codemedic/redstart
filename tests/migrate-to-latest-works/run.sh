#!/bin/bash

_redstart() {
  ../../redstart --db-file x.db3 --base-db-file template.db3 --migrations-dir . "$@"
}

_redstart list-migrations

_redstart migrate-to latest
_redstart migrate-to 20100201
_redstart list-migrations
