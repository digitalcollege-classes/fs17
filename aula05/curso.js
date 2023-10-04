// const express = require('express');
// const router = express.Router();

const router = require('express').Router();

router.get('/cursos', (req, res) => {
    res.send(['PHP', 'Javascript', 'Python']);
});

module.exports = router;