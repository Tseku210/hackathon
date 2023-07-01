/*
  Warnings:

  - You are about to drop the `diagnosis` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `diagnosisgeneral` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `diagnosissubtype` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `diagnosistype` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `diagnosis` DROP FOREIGN KEY `Diagnosis_diagnosisSubtypeId_fkey`;

-- DropForeignKey
ALTER TABLE `diagnosissubtype` DROP FOREIGN KEY `DiagnosisSubtype_diagnosisTypeId_fkey`;

-- DropForeignKey
ALTER TABLE `diagnosistype` DROP FOREIGN KEY `DiagnosisType_diagnosisGeneralId_fkey`;

-- DropTable
DROP TABLE `diagnosis`;

-- DropTable
DROP TABLE `diagnosisgeneral`;

-- DropTable
DROP TABLE `diagnosissubtype`;

-- DropTable
DROP TABLE `diagnosistype`;

-- CreateTable
CREATE TABLE `PomodoraSetting` (
    `id` VARCHAR(191) NOT NULL,
    `pomodoroTime` INTEGER NOT NULL,
    `shortbreakTime` INTEGER NOT NULL,
    `longBreakTime` INTEGER NOT NULL,
    `breakCount` INTEGER NOT NULL,
    `goal` INTEGER NOT NULL,
    `sound` INTEGER NOT NULL,
    `userId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ToDoCategory` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `color` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TodoItems` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `deadline` DATETIME(3) NOT NULL,
    `section` INTEGER NOT NULL,
    `reminder` BOOLEAN NOT NULL,
    `done` BOOLEAN NOT NULL,
    `toDoCategoryId` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TodoTime` (
    `id` VARCHAR(191) NOT NULL,
    `date` VARCHAR(191) NOT NULL,
    `duration` DATETIME(3) NOT NULL,
    `todoItemsId` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `TodoItems` ADD CONSTRAINT `TodoItems_toDoCategoryId_fkey` FOREIGN KEY (`toDoCategoryId`) REFERENCES `ToDoCategory`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TodoTime` ADD CONSTRAINT `TodoTime_todoItemsId_fkey` FOREIGN KEY (`todoItemsId`) REFERENCES `TodoItems`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
