/*
  Warnings:

  - You are about to drop the column `fileId` on the `inpection` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `inpection` DROP COLUMN `fileId`,
    MODIFY `emchiinUzleg` ENUM('Өвчний учир амбулаторт', 'Урьдчилан сэргийлэх', 'Идэвхтэй хяналтаар', 'Гэрийн эргэлтээр', 'Дуудлагаар гэрийн') NULL DEFAULT 'Өвчний учир амбулаторт',
    MODIFY `ambulatort` ENUM('Анхан', 'Давтан') NULL DEFAULT 'Анхан',
    MODIFY `uzlegiinTurul` VARCHAR(191) NULL DEFAULT 'NULL',
    MODIFY `undsenOnosh` VARCHAR(191) NULL DEFAULT '',
    MODIFY `uvchniiShaltgaan` VARCHAR(191) NULL DEFAULT '',
    MODIFY `uvchlul` ENUM('Шинэ', 'Хуучин') NULL DEFAULT 'Шинэ',
    MODIFY `deedShatlaldIlgeesenEseh` BOOLEAN NULL DEFAULT false,
    MODIFY `hiigdsenAjilbar` VARCHAR(191) NULL DEFAULT '',
    MODIFY `HuchirhiileldUrtsunEseh` BOOLEAN NULL DEFAULT false,
    MODIFY `hudulmurAldaltiinHonog` INTEGER NULL DEFAULT 0,
    MODIFY `ergejHolbogdohEseh` BOOLEAN NULL DEFAULT false,
    MODIFY `shaltgaan` VARCHAR(191) NULL DEFAULT '',
    MODIFY `patientId` VARCHAR(191) NULL DEFAULT '',
    MODIFY `shinjilgeeniiBichig` JSON NULL;
