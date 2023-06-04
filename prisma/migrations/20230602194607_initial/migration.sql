-- CreateTable
CREATE TABLE "PokeCard" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "hp" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "pokeDeckId" INTEGER,
    CONSTRAINT "PokeCard_pokeDeckId_fkey" FOREIGN KEY ("pokeDeckId") REFERENCES "PokeDeck" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "PokeDeck" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateIndex
CREATE UNIQUE INDEX "PokeCard_id_key" ON "PokeCard"("id");

-- CreateIndex
CREATE UNIQUE INDEX "PokeDeck_id_key" ON "PokeDeck"("id");
