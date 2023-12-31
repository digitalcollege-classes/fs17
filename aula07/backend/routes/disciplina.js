const express = require('express');
const database = require('../connection/database');

const router = express.Router();

router.get('/disciplinas', async (req, res) => {
    let dados = await database.execute('SELECT * FROM tb_disciplina');

    res.send(dados);
});


router.post('/disciplinas', async (req, res) => {
    let dados = await database.execute(`
        INSERT INTO tb_disciplina (nome, carga_horaria)
        VALUES ('${req.body.nome}', '${req.body.carga_horaria}');
    `);

    req.body.id = dados.insertId;

    res.status(201).send(req.body);
});

router.delete('/disciplinas/:id', async (req, res) => {
    await database.execute(`
        DELETE FROM tb_disciplina WHERE id=${req.params.id}
    `);

    res.status(204).send();
});

module.exports = router;