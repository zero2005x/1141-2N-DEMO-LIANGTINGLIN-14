import pg from "pg";
const { Pool } = pg;

const pool = new Pool({
  user: "postgres", // or your postgres username
  host: "localhost",
  database: "tour_14", // or your database name
  password: "1234", // or your postgres password
  port: 5432,
});

export default pool;
