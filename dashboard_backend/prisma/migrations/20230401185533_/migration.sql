/*
  Warnings:

  - You are about to alter the column `date` on the `todotime` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `DateTime(3)`.
  - Changed the type of `duration` on the `todotime` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE `todoitems` MODIFY `deadline` DATETIME(3) NULL,
    MODIFY `reminder` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `done` BOOLEAN NULL DEFAULT false;

-- AlterTable
ALTER TABLE `todotime` MODIFY `date` DATETIME(3) NOT NULL,
    DROP COLUMN `duration`,
    ADD COLUMN `duration` INTEGER NOT NULL;
