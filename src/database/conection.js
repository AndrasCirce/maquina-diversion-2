const mysql = require('mysql');

const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'admin',
    database: 'empleos'
});

connection.connect(err => {
    if (err) {
        console.error(err);
        return;
    }
    console.log('Successfully connected!');
});

module.exports = connection;