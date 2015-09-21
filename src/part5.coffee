Handler =
  init: (val) ->
    @val = val
    return
  fun1: -> console.log 'fun1'
  prop1: 'pror'

b = Object.create(Handler)
console.log b
console.log b.val
console.log b.init('dupa')
console.log b.val
console.log b.fun1()
console.log b.prop1
