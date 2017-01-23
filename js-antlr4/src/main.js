const antlr4 = require('antlr4/index');
const grammar = require('./grammar').require('Main');

function parse(query) {
    const chars = new antlr4.InputStream(query);
    const lexer = new grammar.Lexer(chars);
    const tokens  = new antlr4.CommonTokenStream(lexer);
    const parser = new grammar.Parser(tokens);
    parser.buildParseTrees = true;
    const tree = parser.prog();

    return new grammar.Visitor().visitProg(tree);
}

module.exports = {parse};
