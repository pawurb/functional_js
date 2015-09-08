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

reverse = (arr) ->
  arr.reverse()

_Container = (val) ->
  @val = val
  return

Container = (val) -> new _Container(val)

_Container.prototype.map = (f) ->
  Container(f(@val))

console.log Container('dupaaaa').map(replaceAwithB)
console.log Container([1,2,3,4]).map(reverse)

map = _.curry((f, obj) ->
  obj.map(f)
)

console.log map(replaceAwithB, Container('dupaaaa'))
