/*
  Warnings:

  - You are about to drop the `_hoststatustouser` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `hoststatus` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `_hoststatustouser` DROP FOREIGN KEY `_HostStatusToUser_A_fkey`;

-- DropForeignKey
ALTER TABLE `_hoststatustouser` DROP FOREIGN KEY `_HostStatusToUser_B_fkey`;

-- DropTable
DROP TABLE `_hoststatustouser`;

-- DropTable
DROP TABLE `hoststatus`;

-- DropTable
DROP TABLE `user`;

-- CreateTable
CREATE TABLE `Vital` (
    `id` VARCHAR(191) NOT NULL,
    `uhaanSanaa` VARCHAR(191) NOT NULL,
    `pulse` DOUBLE NOT NULL,
    `breath` INTEGER NOT NULL,
    `temperature` DOUBLE NOT NULL,
    `pressureRightDeed` INTEGER NOT NULL,
    `pressureRightDood` INTEGER NOT NULL,
    `pressureRightAverage` DOUBLE NOT NULL,
    `pressureRightAdditional` VARCHAR(191) NOT NULL,
    `pressureLeftDeed` INTEGER NOT NULL,
    `pressureLeftDood` INTEGER NOT NULL,
    `pressureLeftAverage` DOUBLE NOT NULL,
    `pressureLeftAdditional` VARCHAR(191) NOT NULL,
    `saturation` DOUBLE NOT NULL,
    `bodyHeight` DOUBLE NOT NULL,
    `bodyWeight` DOUBLE NOT NULL,
    `BJI` DOUBLE NOT NULL,
    `patientId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
