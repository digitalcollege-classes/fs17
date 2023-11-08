const express = require('express');
const cors = require('cors');
const disciplinaRouter = require('./routes/disciplina');

const app = express();

//habilitar o uso de JSON nessa API
app.use(express.json());

//liberar o acesso a servidor externos
app.use(cors());

//Add as rotas de disciplina
app.use(disciplinaRouter);

//Subir o servidor
app.listen(8000);

//npx nodemon index.js
// http://localhost:8000/disciplinas