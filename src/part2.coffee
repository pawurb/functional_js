upcaser = (a) ->
  a.toUpperCase()

reverser = (a) ->
  a.split('').reverse().join('')

inserter = _.curry((a, b) ->
  b.split('').join(a)
)

screamer = inserter('!!')

upcaverser = R.compose(upcaser, reverser)

loudupcaverser = _.compose(screamer, upcaser, reverser)

console.log upcaverser('dupa')
console.log loudupcaverser('dupa')

get = _.curry((prop, object) ->
  object[prop]
)

data = [
  {a: {b: '1'}}
  {a: {b: '2'}}
]

bExtractor = _.compose(get('b'), get('a'))
console.log R.map(bExtractor, data)
