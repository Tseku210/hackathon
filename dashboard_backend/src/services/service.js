import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export class PomodoroService {
  static async getSetting(where) {
    console.log("where", where);
    const data = await prisma.PomodoraSetting.findMany({
      where,
    });
    return data;
  }

  static async getCategory(where) {
    const data = await prisma.ToDoCategory.findMany({
      where,
    });
    return data;
  }
  static async getItems(_where) {
    console.log(_where, "==========>");
    const data = await prisma.TodoItems.findMany({
      where: _where,
    });
    return data;
  }
  static async getTime(_where) {
    console.log("first", { where });
    const data = await prisma.TodoTime.findMany({ where });
    return data;
  }
  static async createSetting(data) {
    const newData = await prisma.PomodoraSetting.create({ data });
    return newData;
  }

  static async createCategory(data) {
    const newData = await prisma.ToDoCategory.create({ data });
    return newData;
  }

  static async createItems(data) {
    const newData = await prisma.TodoItems.create({ data });
    return newData;
  }
  static async createTime(data) {
    const newData = await prisma.TodoTime.create({ data });
    return newData;
  }

  static async editSetting(data) {
    const editData = await prisma.PomodoraSetting.update({
      where: {
        id: data.id,
      },
      data,
    });
    return editData;
  }

  static async editCategory(where, data) {
    const editData = await prisma.ToDoCategory.update({ where, data });
    return editData;
  }

  static async editItems(where, data) {
    const editData = await prisma.TodoItems.update({ where, data });
    return editData;
  }
  static async editTime(where, data) {
    const editData = await prisma.TodoTime.update({ where, data });
    return editData;
  }
}
