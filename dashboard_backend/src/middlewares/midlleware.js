import { matchedData, validationResult } from "express-validator";

export class Middleware {
  static async requestData(req, res, next) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res
        .status(400)
        .json({ success: false, message: errors.array()[0].msg });
    }
    req.returnData = matchedData(req);
    next();
  }
}
