-- AlterTable
ALTER TABLE `pomodorasetting` MODIFY `pomodoroTime` INTEGER NULL DEFAULT 25,
    MODIFY `shortbreakTime` INTEGER NULL DEFAULT 5,
    MODIFY `longBreakTime` INTEGER NULL DEFAULT 15,
    MODIFY `breakCount` INTEGER NULL DEFAULT 5,
    MODIFY `goal` INTEGER NULL DEFAULT 3,
    MODIFY `sound` INTEGER NULL DEFAULT 1;