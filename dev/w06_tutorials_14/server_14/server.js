import express from "express";
import db from "./utils/database.js";
import cors from "cors";

const app = express();
const port = process.env.PORT || 5000;

app.use(cors());

app.use("/api/blogs_14", async (req, res, next) => {
  const results = await db.query("SELECT * FROM blog_14");

  console.log("results", JSON.stringify(results.rows));
  res.json(results.rows);
});

app.get("/", (req, res, next) => {
  res.send("liangtinglin, 913410014");
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
