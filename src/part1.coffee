console.log(_([4,2, 1].map((a) -> a * 2)).value())
a = _.pluck([1,2,3], '1')
console.log a

assertEq(1,1)

adder = (a, b) ->
  a + b

multiplier = (a, b) ->
  a * b

curriedAdder = _.curry(adder)
addTwo = curriedAdder(2)
console.log addTwo(10)

cMultiplier = _.curry(multiplier)
times3 = cMultiplier(3)

triple = (a) ->
  _.map(a, times3)

assertEq(triple([1,2,3]), [3,6,9])
