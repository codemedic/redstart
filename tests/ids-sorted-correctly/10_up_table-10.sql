BEGIN TRANSACTION;
    CREATE TABLE T10 (
        ID integer PRIMARY KEY NOT NULL UNIQUE,
        Email TEXT NOT NULL UNIQUE,
        Name TEXT NOT NULL
    );
COMMIT;

