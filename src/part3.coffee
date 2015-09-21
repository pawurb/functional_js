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

_Maybe = (val) ->
  @val = val
  return

Container = (val) -> new _Container(val)
Maybe = (val) -> new _Maybe(val)

_Container.prototype.map = (f) ->
  Container(f(@val))

_Maybe.prototype.map = (f) ->
  if @val != null and @val != undefined
    Maybe(f(@val))
  else
    Maybe(null)

console.log Container('dupaaaa').map(replaceAwithB)
console.log Container([1,2,3,4]).map(reverse)

map = _.curry((f, obj) ->
  obj.map(f)
)

console.log map(replaceAwithB, Container('dupaaaa'))

map(replaceAwithB, Maybe(null))
console.log map(parseInt, Maybe("2"))
console.log map(parseInt, Maybe(null))
try
  map(replaceAwithB, Container(null))
catch e
  console.log e


