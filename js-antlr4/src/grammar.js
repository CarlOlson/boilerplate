function requireGrammar(name) {
    function getFirstProperty(object) {
	const property = Object.keys(object)[0];
	return object[property];
    }

    function requireAndGet(subName) {
	return getFirstProperty(require('./antlr/' + name + subName));
    }

    return {
	Listener: requireAndGet('Listener'),
	Visitor: requireAndGet('Visitor'),
	Lexer: requireAndGet('Lexer'),
	Parser: requireAndGet('Parser')
    };
}

module.exports = { require: requireGrammar };
