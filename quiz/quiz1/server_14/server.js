import express from "express";
import cors from "cors";

const app = express();

import db from "./utils/database.js";

app.use(cors());

app.use("/api/blog_14", async (req, res, next) => {
  const results = await db.query(`select * from tour_14`);
  console.log("results", JSON.stringify(results.rows));
  res.json(results.rows);
});

app.use("/api/tour_14/featured", async (req, res, next) => {
  const results = await db.query(`SELECT * FROM tour_14 WHERE featured = true`);
  console.log("results", JSON.stringify(results.rows));
  res.json(results.rows);
});

app.use("/", (req, res, next) => {
  res.send("liangtingling, 9134100149");
});

const port = process.env.PORT || 5000;
app.listen(port, () => {
  console.log(`Server running on port ${port} `);
});
