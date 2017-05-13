# Redstart - Schema Migrations for SQLite 3

Utility to migrate an SQLite 3 database using basic tools available in *NIX systems. It uses bash and sqlite3 commandline tool.

## Usage

```
   redstart OPTIONS COMMAND

   OPTIONS
      --db-file <PathToDbFile>
         SQLite database file to work on.

      --migrations-dir <Directory> [default: current-working-directory]
         Directory where the migration SQL files are kept.

      --base-db-file <PathToBaseDbFile> [optional]
         The base SQLite database file to apply migrations to, in order to create
         the database file (specified by --db-file)

   COMMAND
      migrate-to <MigrationID>
         Migrate the database file specified in --db-file to the specified MigrationID.
         If the db-file does not exist, it will be either copied from base-db-file, if
         specified, or a new one is created. If no migration table ($MigrationTable)
         exists, it will be created and populated with details of migrations found in
         migrations-dir.

      list-migrations
         List current migrations and their status (whether applied or not).
```

## How to setup?

You need [`gitman`](https://github.com/redmatter/docker-gitman) to install [`bash-pack`](https://github.com/codemedic/bash-pack) which is required for `redstart` to work.

```
# clone and cd into the redstart
git clone https://github.com/codemedic/redstart.git
cd redstart

# run gitman to install dependencies
docker run --rm -it --volume="$(pwd):/project" redmatter/gitman install
```

## How to create a migration?
You can start off by creating empty files for both UP and DOWN migrations, as below.  When you choose a MigrationID, make sure it is not a duplicate of any of the already existing migrations.

```
touch <migration-dir>/<NewID>_{up,down}_<ShortDescription>.sql
```

The ShortDescription cannot contain spaces or dots. See example below.

```
touch ./$(date +%Y%m%d)_{up,down}_create-group-table.sql
```

When adding SQLs to these migration files, it will be a good idea to wrap them in transactions. It will make sure that the database is left in a sane state, if the migration fails for what ever reason.

## Why the name?
Redstarts are a species of small, migratory birds; taking inspiration from the feather on SQLite logo.
