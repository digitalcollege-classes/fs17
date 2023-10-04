const express = require('express');

//criando um direcionador para definir qual endpoint faz o que
const router = express.Router();

router.get('/alunos', (req, res) => {
    res.send(['Maria', 'Jose', 'Rita']);
});

router.get('/alunos/:id', (req, res) => {
    // SELECT * FROM tb_aluno WHERE id = req.params.id;
        
    res.send({
        id: req.params.id,
        nome: "Chiquim",
        cidade: "Caucaia",
    })
});

router.post('/alunos', (req, res) => {
    //insert into...

    res.send({
        msg: "Pronto"
    })
});

router.patch('/alunos/:id', (req, res) => {
    //insert into...

    res.send({
        msg: "Pronto, editar"
    })
})

router.delete('/alunos/:id', (req, res) => {
    //delete from...

    res.send({
        msg: "Pronto, excluir"
    })
})

router.delete('/url', (req, res) => {

});

module.exports = router;