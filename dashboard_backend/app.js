import express, { json } from "express";
import path from "path";
import router from "./src/routes/route.js";
import { fileURLToPath } from "url";
import cors from "cors";

const app = express();

app.use(cors());
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

app.use(express.static(path.join(__dirname, "/public")));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.use((req, res, next) => {
  console.log(req.originalUrl);
  next();
});
app.use("/dashboard", router);

app.listen(4002, async (err) => {
  console.log("Server listening on http://localhost:4002");
});
