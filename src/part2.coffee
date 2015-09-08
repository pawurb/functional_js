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

fork = _.curry((lastly, f, g, x) ->
  lastly(f(x), g(x))
)

avg = fork(R.divide, R.sum, _.size)

console.log avg([2,2,3,4,5])

err = { message: 'it borke' }
#A
on_error = (err) ->
  console.log err.message

on_error(err)
console.log(get('message', err))

_.compose(console.log.bind(console), get('message'))(err)


