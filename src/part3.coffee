replacer = _.curry((from, to, text) ->
  String.prototype.replace.bind(text)(from,to)
)

replaceAwithB = replacer(/a/g, 'b')

console.log replaceAwithB('lalala')
