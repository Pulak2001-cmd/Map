const mysql = require("mysql2");

const pool = mysql.createPool({
  user: "sql6484518",
  password: "hkszwFciJ5",
  host: "sql6.freesqldatabase.com",
  port: 3306,
  database: "sql6484518"
});

module.exports = pool;