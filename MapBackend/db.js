const mysql = require("mysql2");

const pool = mysql.createPool({
  user: "root",
  password: "",
  host: "localhost",
  port: 3306,
  database: "colleges"
});

module.exports = pool;