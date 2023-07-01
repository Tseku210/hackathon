/*
  Warnings:

  - The primary key for the `pomodorasetting` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `pomodorasetting` table. All the data in the column will be lost.
  - Made the column `pomodoroTime` on table `pomodorasetting` required. This step will fail if there are existing NULL values in that column.
  - Made the column `shortbreakTime` on table `pomodorasetting` required. This step will fail if there are existing NULL values in that column.
  - Made the column `longBreakTime` on table `pomodorasetting` required. This step will fail if there are existing NULL values in that column.
  - Made the column `breakCount` on table `pomodorasetting` required. This step will fail if there are existing NULL values in that column.
  - Made the column `goal` on table `pomodorasetting` required. This step will fail if there are existing NULL values in that column.
  - Made the column `sound` on table `pomodorasetting` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `pomodorasetting` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    MODIFY `pomodoroTime` INTEGER NOT NULL DEFAULT 25,
    MODIFY `shortbreakTime` INTEGER NOT NULL DEFAULT 5,
    MODIFY `longBreakTime` INTEGER NOT NULL DEFAULT 15,
    MODIFY `breakCount` INTEGER NOT NULL DEFAULT 5,
    MODIFY `goal` INTEGER NOT NULL DEFAULT 3,
    MODIFY `sound` INTEGER NOT NULL DEFAULT 1,
    ADD PRIMARY KEY (`userId`);
