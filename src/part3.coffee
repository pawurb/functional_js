replacer = _.curry((from, to, text) ->
  String.prototype.replace.bind(text)(from,to)
)

replaceAwithB = replacer(/a/g, 'b')

console.log replaceAwithB('lalala')

taker = _.curry((amount, arr) ->
  _.take(arr, amount)
)

takeTwo = taker(2)

console.log takeTwo([1,2,3,4,5])
