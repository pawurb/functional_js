upcaser = (a) ->
  a.toUpperCase()

reverser = (a) ->
  a.split('').reverse().join('')

inserter = _.curry((a, b) ->
  b.split('').join(a)
)

screamer = inserter('!!')

upcaverser = _.compose(upcaser, reverser)

loudupcaverser = _.compose(screamer, upcaser, reverser)

console.log upcaverser('dupa')
console.log loudupcaverser('dupa')

data = [
  {a: {b: '1'}}
  {a: {b: '2'}}
]

bExtractor = _.compose(R.prop('b'), R.prop('a'))
console.log R.map(bExtractor, data)
