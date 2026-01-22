var database = require("../database/config");

function listar() {

    var instrucaoSql = `
        select 
livro.id,
livro.titulo,
livro.precoCompra,
livro.precoVenda,
autor.nome as nomeAutor,
genero.nome as nomeGenero
 from livro join autor on autor.id = livro.fkAutor join genero on genero.id = livro.fkGenero;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}



function cadastrar(titulo, fkAutor, fkGenero, precoCompra, precoVenda) {

    var instrucaoSql = `
        INSERT INTO livro (titulo, fkAutor, fkGenero, precoCompra, precoVenda) VALUES ('${titulo}', '${fkAutor}', '${fkGenero}', '${precoCompra}', '${precoVenda}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function editar(novoPrecoCompra, novoPrecoVenda, id) {

    var instrucaoSql = `
        UPDATE livro 
        SET precoCompra = '${novoPrecoCompra}', 
            precoVenda = '${novoPrecoVenda}'
        WHERE id = ${id};
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function plotarQuantidadeCadastro(){

    var instrucaoSql = `
    SELECT 
    livro.estoque,
    genero.nome AS nomeGenero
FROM livro
	JOIN genero ON genero.id = livro.fkGenero;
    
    `

    console.log("Executando a instrução SQL: \n" + instrucaoSql)
    return database.executar(instrucaoSql)


}

function plotarQuantidadeLivros(){

    var instrucaoSql = `
    SELECT
    livro.estoque AS estoque,
    genero.nome AS nomeGenero
FROM livro
	JOIN genero ON genero.id = livro.fkGenero
    ORDER BY estoque;
    `

    console.log("Executando a instrução SQL: \n" + instrucaoSql)
    return database.executar(instrucaoSql)


}


function plotarAutoresCaros(){

    var instrucaoSql = `
    SELECT 
    livro.precoVenda,
    autor.nome AS nomeAutor
FROM livro
	JOIN autor ON autor.id = livro.fkAutor
    ORDER BY precoVenda;
    `

    console.log("Executando a instrução SQL: \n" + instrucaoSql)
    return database.executar(instrucaoSql)


}

module.exports = {
    listar,
    cadastrar,
    editar,
    plotarQuantidadeCadastro,
    plotarQuantidadeLivros,
    plotarAutoresCaros
}
