BEGIN TRANSACTION;
    CREATE TABLE T6 (
        ID integer PRIMARY KEY NOT NULL UNIQUE,
        Email TEXT NOT NULL UNIQUE,
        Name TEXT NOT NULL
    );
COMMIT;
