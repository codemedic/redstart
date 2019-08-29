#!/bin/bash

_redstart() {
  ../../redstart --db-file x.db3 --base-db-file template.db3 --migrations-dir . "$@"
}

_redstart list-migrations
if _redstart check; then
    echo "check was expected to return false"
    exit 1
fi
_redstart migrate-to latest
if ! _redstart check; then
    echo "check was expected to return true"
    exit 1
fi
_redstart migrate-to 20100201
if _redstart check; then
    echo "check was expected to return false"
    exit 1
fi
_redstart list-migrations
