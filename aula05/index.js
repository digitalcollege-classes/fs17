const express = require('express');
const alunoRouter = require('./aluno');
const cursoRouter = require('./curso');

const app = express();

app.use(alunoRouter);
app.use(cursoRouter);

app.listen(8000);