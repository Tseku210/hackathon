import express from "express";
import asyncWrapper from "../utils/async_wrapper.js";
import { PomodoroController } from "../controllers/controller.js";
import { Middleware } from "../middlewares/midlleware.js";

const router = express.Router();
router.get(
  "/setting",
  (req, res, next) => Middleware.requestData(req, res, next),
  (req, res) => asyncWrapper(PomodoroController.getSetting(req, res))
);

router.get(
  "/category",
  (req, res, next) => Middleware.requestData(req, res, next),
  (req, res) => asyncWrapper(PomodoroController.getCategory(req, res))
);

router.get(
  "/items",
  (req, res, next) => Middleware.requestData(req, res, next),
  (req, res) => asyncWrapper(PomodoroController.getItems(req, res))
);
router.get(
  "/time",
  (req, res, next) => Middleware.requestData(req, res, next),
  (req, res) => asyncWrapper(PomodoroController.getTimes(req, res))
);
router.post(
  "/setting",
  (req, res, next) => Middleware.requestData(req, res, next),
  (req, res) => asyncWrapper(PomodoroController.postSetting(req, res))
);
router.post(
  "/category",
  (req, res, next) => Middleware.requestData(req, res, next),
  (req, res) => asyncWrapper(PomodoroController.postCategory(req, res))
);
router.post(
  "/items",
  (req, res, next) => Middleware.requestData(req, res, next),
  (req, res) => asyncWrapper(PomodoroController.postItems(req, res))
);
router.post(
  "/time",
  (req, res, next) => Middleware.requestData(req, res, next),
  (req, res) => asyncWrapper(PomodoroController.postTime(req, res))
);

export default router;
