BEGIN TRANSACTION;
    PRAGMA foreign_keys=OFF;

    DROP TABLE "Group";

    CREATE TABLE "User_Temp" (
        ID integer PRIMARY KEY NOT NULL UNIQUE,
        Email TEXT NOT NULL UNIQUE,
        Name TEXT NOT NULL
    );
    INSERT INTO "User_Temp" (ID, Email, Name)
        SELECT ID, Email, Name FROM User;
    DROP TABLE "User";
    ALTER TABLE "User_Temp" RENAME TO "User";
COMMIT;
