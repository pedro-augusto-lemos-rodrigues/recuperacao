var express = require("express");
var router = express.Router();

var livrosController = require("../controllers/livrosController");

router.get("/listar", function (req, res) {
    livrosController.listar(req, res);
});

router.post("/cadastrar", function (req, res) {
    livrosController.cadastrar(req, res);
});

router.put("/editar/:id", function (req, res) {
    livrosController.editar(req, res);
});

router.get("/plotarQuantidadeCadastro", function(req, res){
    livrosController.plotarQuantidadeCadastro(req, res)
})

router.get("/plotarQuantidadeLivros", function(req, res){
    livrosController.plotarQuantidadeLivros(req, res)
})

router.get("/plotarAutoresCaros", function(req, res){
    livrosController.plotarAutoresCaros(req, res)
})

module.exports = router;