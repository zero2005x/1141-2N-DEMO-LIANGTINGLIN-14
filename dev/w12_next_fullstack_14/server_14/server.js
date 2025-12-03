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

app.use("/api/shop_14/:category", async (req, res, next) => {
  const category = req.params.category;
  console.log("category", category);
  let queryText =
    "select  * from category2_14, shop2_14 where category2_14.cname = $1 and category2_14.cid = shop2_14.cat_id";
  const queryParams = [category];
  const results = await db.query(queryText, queryParams);
  console.log("results", JSON.stringify(results.rows));
  res.json(results.rows);
});

app.use("/api/shop_14/", async (req, res, next) => {
  console.log("category", req.query.category);
  let queryText = "SELECT * FROM shop2_14";
  const queryParams = [];
  const results = await db.query("SELECT * FROM shop2_14");
  console.log("results", JSON.stringify(results.rows));
  res.json(results.rows);
});

app.get("/", (req, res, next) => {
  res.send("liangtinglin, 913410014");
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
