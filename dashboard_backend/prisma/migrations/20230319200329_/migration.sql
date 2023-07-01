/*
  Warnings:

  - You are about to drop the `inpection` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `inpection`;

-- CreateTable
CREATE TABLE `DiagnosisGeneral` (
    `id` VARCHAR(191) NOT NULL,
    `generalType` VARCHAR(191) NOT NULL,
    `generalCode` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `DiagnosisType` (
    `id` VARCHAR(191) NOT NULL,
    `diagnosisGeneralId` VARCHAR(191) NULL,
    `type` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `DiagnosisSubtype` (
    `id` VARCHAR(191) NOT NULL,
    `diagnosisTypeId` VARCHAR(191) NULL,
    `subtype` VARCHAR(191) NOT NULL,
    `subtypeCode` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Diagnosis` (
    `id` VARCHAR(191) NOT NULL,
    `diagnosisSubtypeId` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `value` VARCHAR(191) NULL,
    `additional` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `DiagnosisType` ADD CONSTRAINT `DiagnosisType_diagnosisGeneralId_fkey` FOREIGN KEY (`diagnosisGeneralId`) REFERENCES `DiagnosisGeneral`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DiagnosisSubtype` ADD CONSTRAINT `DiagnosisSubtype_diagnosisTypeId_fkey` FOREIGN KEY (`diagnosisTypeId`) REFERENCES `DiagnosisType`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Diagnosis` ADD CONSTRAINT `Diagnosis_diagnosisSubtypeId_fkey` FOREIGN KEY (`diagnosisSubtypeId`) REFERENCES `DiagnosisSubtype`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
