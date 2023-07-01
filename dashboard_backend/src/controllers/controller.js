import { Prisma } from "@prisma/client";
import { PomodoroService } from "../services/service.js";

export class PomodoroController {
  static async getSetting(req, res) {
    const { userId } = req.query;

    console.log("gatNaraa", req.query);

    const _where = {};
    if (userId) {
      _where.userId = userId;
    }
    try {
      const data = await PomodoroService.getSetting(_where);
      res.status(200).json({ success: true, data });
    } catch (error) {
      res.status(500).json({ success: false, message: error.message });
    }
  }

  static async getCategory(req, res) {
    const { userId } = req.query;
    const _where = {};
    if (userId) {
      _where.userId = userId;
    }
    try {
      const data = await PomodoroService.getCategory(_where);
      res.status(200).json({ success: true, data: data });
    } catch (error) {
      res.status(500).json({ success: false, message: error.message });
    }
  }

  static async getItems(req, res) {
    const { toDoCategoryId, done, deadline } = req.query;
    console.log(toDoCategoryId, done, typeof Date.parse(deadline));
    const where = {};
    if (toDoCategoryId) {
      where.toDoCategoryId = toDoCategoryId;
    }
    if (done) {
      where.done = JSON.parse(done);
    }
    if (deadline) {
      where.deadline = Date.parse(deadline);
    }
    try {
      const data = await PomodoroService.getItems(where);
      res.status(200).json({ success: true, data: data });
    } catch (error) {
      res.status(500).json({ success: false, message: error.message });
    }
  }

  static async getTimes(req, res) {
    const _where = {};
    try {
      const data = await PomodoroService.getTimes(_where);
      res.status(200).json({ success: true, data: data });
    } catch (error) {
      res.status(500).json({ success: false, message: error.message });
    }
  }

  static async postSetting(req, res) {
    try {
      const { id } = req.body;
      console.log("getAll", id);

      if (id) {
        const data = await PomodoroService.editSetting(req.body);
        res.status(200).json({ success: true, data: data });
      } else {
        const data = await PomodoroService.createSetting(req.body);
        res.status(200).json({ success: true, data: data });
      }
    } catch (error) {
      res.status(500).json({ success: false, message: error.message });
    }
  }

  static async postCategory(req, res) {
    console.log("newData", req.body.params);
    try {
      const { id } = req.body;
      if (id) {
        const where = { id };
        const data = await PomodoroService.editCategory(where, req.body);
        res.status(200).json({ success: true, data: data });
      } else {
        const data = await PomodoroService.createCategory(req.body);
        res.status(200).json({ success: true, data: data });
      }
    } catch (error) {
      res.status(500).json({ success: false, message: error.message });
      console.log("error", error);
    }
  }

  static async postItems(req, res) {
    console.log("newData", req.body.params);
    try {
      const { id } = req.body;
      if (id) {
        const where = { id };
        const data = await PomodoroService.editItems(where, req.body);
        res.status(200).json({ success: true, data: data });
      } else {
        const data = await PomodoroService.createItems(req.body);
        res.status(200).json({ success: true, data: data });
      }
    } catch (error) {
      res.status(500).json({ success: false, message: error.message });
      console.log("error", error);
    }
  }
  static async postTime(req, res) {
    console.log("newData", req.body.params);
    try {
      const { id } = req.body;
      if (id) {
        const where = { id };
        const data = await PomodoroService.editTime(where, req.body);
        res.status(200).json({ success: true, data: data });
      } else {
        const data = await PomodoroService.createTime(req.body);
        res.status(200).json({ success: true, data: data });
      }
      res.status(200).json({ success: true, data: data });
    } catch (error) {
      res.status(500).json({ success: false, message: error.message });
      console.log("error", error);
    }
  }
}
