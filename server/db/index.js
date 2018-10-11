var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

var db = mysql.createConnection({
  host: 'localhost',
  port: '3306',
  user: 'student',
  password: 'student'
});

module.exports = db;