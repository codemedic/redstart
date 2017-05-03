#!/bin/bash

bash ../../migrate.sh --db-file x.db3 --base-db-file template.db3 --migrations-dir . migrate-to 1
bash ../../migrate.sh --db-file x.db3 --base-db-file template.db3 --migrations-dir . migrate-to 0
