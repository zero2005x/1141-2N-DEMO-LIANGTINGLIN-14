import pg from "pg";
import dotenv from "dotenv";
dotenv.config();

const { Pool } = pg;
let pool;
if (process.env.DATABASE === "LOCAL") {
  pool = new Pool({
    user: "postgres",
    host: "localhost",
    database: "wp1_demo_14",
    password: "user",
    port: "5432",
  });
  console.log("Connected to LOCAL database");
} else if (process.env.DATABASE === "SUPABASE") {
  pool = new Pool({
    user: process.env.SUPABASE_USER,
    host: process.env.SUPABASE_HOST,
    database: process.env.SUPABASE_DATABASE,
    password: process.env.SUPABASE_PASSWORD,
    port: process.env.SUPABASE_PORT,
  });
  console.log("Connected to SUPABASE database");
}
export default pool;
