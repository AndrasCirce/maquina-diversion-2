const bodyParser = require('body-parser');
const express    = require('express');
const router     = express.Router();

router.use(bodyParser.urlencoded({ extended: false }));
router.use(bodyParser.json());

router.use('/users', require('./user.routes'));
router.use('/vacancy', require('./vacancy.routes'));

module.exports = router;