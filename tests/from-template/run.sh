#!/bin/bash

../../redstart --db-file x.db3 --base-db-file template.db3 --migrations-dir . migrate-to 1
../../redstart --db-file x.db3 --base-db-file template.db3 --migrations-dir . migrate-to 0
