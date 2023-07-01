-- AlterTable
ALTER TABLE `todoitems` MODIFY `section` INTEGER NULL DEFAULT 3,
    MODIFY `reminder` BOOLEAN NULL DEFAULT false,
    MODIFY `toDoCategoryId` VARCHAR(191) NULL DEFAULT '';
