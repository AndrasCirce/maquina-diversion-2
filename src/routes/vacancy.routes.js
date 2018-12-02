const bodyParser = require('body-parser');
const express    = require('express');
const router     = express.Router();
const connection = require('../database/conection');

router.use(bodyParser.urlencoded({ extended: false }));
router.use(bodyParser.json());

router.post('/register', (req, res) => {
    let query = 'insert into vacante values(?, ?, ?, ?, ?, ?, ?)';
    let values = [
        req.body.name,
        req.body.description,
        req.body.salary,
        req.body.enterprise,
        req.body.category,
        req.body.lat,
        req.body.long
    ];

    connection.query(query, values, (err, results) => {
        if (err) return res.status(500).send(err);
        return res.status(200).send(results[0][0]);
    });
});

router.get('/vacantes', (req, res) => {
    let query = 'SELECT * FROM vacante';

    connection.query(query, (err, results) => {
        if (err) return res.status(404).send(err);
        res.status(200).json(results);
    });
});

module.exports = router;