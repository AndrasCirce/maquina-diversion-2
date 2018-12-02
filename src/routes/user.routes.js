const connection = require('../database/conection');
const express    = require('express');
const router     = express.Router();

router.post('/login', (req, res) => {
    let query = `select * from usuario where correo = "${req.body.email}" and contraseña = "${req.body.password}"`
    let email = req.body.email;
    let password = req.body.password;

    connection.query(query, (err, results) => {
        if (err) {
            console.log(err);
            return res.status(404).send({ Error: '404 Not found' });
        }
        res.status(200).json(results);
    });
});

router.post('/register', (req, res) => {
    let query = 'insert into usuario values(?, ?, ?, ?, ?)';
    let values = [
        req.body.name,
        req.body.lastName,
        req.body.email,
        req.body.password,
        req.body.category
    ];

    connection.query(query, values, (err, results) => {
        if (err) return res.status(500).send(err);
        res.status(200).send(results[0][0]);
    });
});

router.post('/search', (req, res) => {
    let query = `select * from vacante where categoria = "${req.body.category}"`;
    let values = [
        req.body.category
    ];

    connection.query(query, values, (err, results) => {
        if (err) return res.status(500).send(err);
        res.status(200).json(results);
    });
});

module.exports = router;