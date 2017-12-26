PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Dipartimento" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "name" TEXT NOT NULL,
    "tot_moduli" INTEGER NOT NULL,
    "tot_valutati" INTEGER NOT NULL,
    "tot_schedeF" INTEGER NOT NULL,
    "tot_schedeNF" INTEGER NOT NULL,
    "id_opis" INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "cds" (
    "id" INTEGER PRIMARY KEY NOT NULL,
    "name" TEXT,
    "class" TEXT,
    "tot_moduli" INTEGER NOT NULL,
    "tot_valutati" INTEGER NOT NULL,
    "tot_schedeF" INTEGER NOT NULL,
    "tot_schedeNF" INTEGER NOT NULL,
    "id_dipartimento" INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "materia" (
    "id" INTEGER PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "canale" TEXT,
    "ssd" TEXT,
    "tipo" TEXT,
    "anno" INTEGER,
    "semestre" INTEGER,
    "CFU" INTEGER,
    "docente" TEXT,
    "assegn", TEXT,
    "tot_schedeF" INTEGER NOT NULL,
    "tot_schedeNF" INTEGER NOT NULL,
    "id_cds" INTEGER NOT NULL
);
DELETE FROM sqlite_sequence;
COMMIT;