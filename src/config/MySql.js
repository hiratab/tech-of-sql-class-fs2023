require('dotenv').config();
const mysql = require('mysql2/promise');

const {
  MYSQL_HOST,
  MYSQL_USER,
  MYSQL_PWD,
  MSQL_DB_NAME,
} = process.env;
console.log(MYSQL_HOST,
  MYSQL_USER,
  MYSQL_PWD,
  MSQL_DB_NAME
)

let databaseConnection;

const connectToDatabase = async () => {
  console.log('Connecting to the database');
  databaseConnection = await mysql.createConnection({
    host: MYSQL_HOST,
    user: MYSQL_USER,
    password: MYSQL_PWD,
    database: MSQL_DB_NAME
  });

  try {
    const [results, fields] = await databaseConnection.query(
      'SELECT * FROM `tb_anime`'
    );
  
    console.log(results); // results contains rows returned by server
    console.log(fields); // fields contains extra meta data about results, if available
  } catch (err) {
    console.log(err);
  }
  console.log('Connected to the database');
}

module.exports = {
  connectToDatabase
}
