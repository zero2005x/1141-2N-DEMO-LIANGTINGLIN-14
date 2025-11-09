import pg from "pg";
const { Pool } = pg;
let pool;

if (process.env.DATABASE === "LOCAL") {
  pool = new Pool({
    host: "localhost",
    port: "5432",
    user: "postgres",
    password: "user",
    database: "wp1_quiz1_14",
  });
  console.log("Connecting local database", pool.options.database);
} else if (process.env.DATABASE === "SUPABASE") {
  pool = new Pool({
    host: process.env.SUPABASE_HOST,
    port: process.env.SUPABASE_PORT,
    user: process.env.SUPABASE_USER,
    password: process.env.SUPABASE_PASSWORD,
    database: process.env.SUPABASE_DATABASE,
  });
  console.log("Connecting Supabase", pool.options.database);
} else {
  throw new Error("No database configuration found");
}

export default pool;
