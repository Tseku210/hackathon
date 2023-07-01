/*
  Warnings:

  - You are about to drop the `file` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `shinjilgeeniiBichig` to the `Inpection` table without a default value. This is not possible if the table is not empty.
  - Made the column `emchiinUzleg` on table `inpection` required. This step will fail if there are existing NULL values in that column.
  - Made the column `uvchlul` on table `inpection` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `file` DROP FOREIGN KEY `File_inpectionId_fkey`;

-- AlterTable
ALTER TABLE `inpection` ADD COLUMN `shinjilgeeniiBichig` JSON NOT NULL,
    MODIFY `emchiinUzleg` ENUM('Өвчний учир амбулаторт', 'Урьдчилан сэргийлэх', 'Идэвхтэй хяналтаар', 'Гэрийн эргэлтээр', 'Дуудлагаар гэрийн') NOT NULL,
    MODIFY `uvchlul` ENUM('Шинэ', 'Хуучин') NOT NULL;

-- DropTable
DROP TABLE `file`;
