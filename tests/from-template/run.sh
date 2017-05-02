#!/bin/bash

bash ../../migrate.sh --migrate-to 1 --db-file x.db3 --base-db-file template.db3 --migrations-dir .
bash ../../migrate.sh --migrate-to 0 --db-file x.db3 --base-db-file template.db3 --migrations-dir .
