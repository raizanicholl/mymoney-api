const { Router } = require("express");
const TransactionsController = require("./controllers/TransactionsController");

const routes = Router();

routes.get('/transactions', TransactionsController.listAll);
routes.post('/transactions', TransactionsController.create);
routes.delete('/transactions/:id', TransactionsController.delete);
routes.put('/transactions/:id', TransactionsController.update);


module.exports = routes;