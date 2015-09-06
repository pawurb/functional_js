assertEq = (x, y) ->
  if _.eq(x, y)
    console.log "#{x} is to equal to #{y}"
  else
    throw "Expected #{x} to equal #{y}"
