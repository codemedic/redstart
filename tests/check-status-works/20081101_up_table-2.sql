BEGIN TRANSACTION;
    CREATE TABLE T2 (
        ID integer PRIMARY KEY NOT NULL UNIQUE,
        Email TEXT NOT NULL UNIQUE,
        Name TEXT NOT NULL
    );
COMMIT;

