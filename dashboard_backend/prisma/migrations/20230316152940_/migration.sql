/*
  Warnings:

  - You are about to drop the `vital` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `vital`;

-- CreateTable
CREATE TABLE `Inpection` (
    `id` VARCHAR(191) NOT NULL,
    `emchiinUzleg` ENUM('Өвчний учир амбулаторт', 'Урьдчилан сэргийлэх', 'Идэвхтэй хяналтаар', 'Гэрийн эргэлтээр', 'Дуудлагаар гэрийн') NULL,
    `ambulatort` ENUM('Анхан', 'Давтан') NOT NULL,
    `uzlegiinTurul` VARCHAR(191) NULL,
    `undsenOnosh` JSON NOT NULL,
    `uvchniiShaltgaan` JSON NOT NULL,
    `uvchlul` ENUM('Шинэ', 'Хуучин') NULL,
    `deedShatlaldIlgeesenEseh` BOOLEAN NOT NULL,
    `hiigdsenAjilbar` VARCHAR(191) NOT NULL,
    `HuchirhiileldUrtsunEseh` BOOLEAN NOT NULL,
    `hudulmurAldaltiinHonog` INTEGER NOT NULL,
    `ergejHolbogdohEseh` BOOLEAN NOT NULL,
    `shaltgaan` VARCHAR(191) NOT NULL,
    `patientId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `fileId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `File` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `mimetype` VARCHAR(191) NOT NULL,
    `size` INTEGER NOT NULL,
    `content` LONGBLOB NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `inpectionId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `File` ADD CONSTRAINT `File_inpectionId_fkey` FOREIGN KEY (`inpectionId`) REFERENCES `Inpection`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
