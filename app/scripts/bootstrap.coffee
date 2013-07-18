timeline =
  0: ->
   $('.bootstrap').animate(opacity: 1, 2000)
  2500: ->
    $('.bootstrap-loading').append('<img src="images/loading.gif" alt="Loading">')
  10000: ->
    $('.bootstrap-loading').remove()
    $('.bootstrap-logo').animate(opacity: 1)
  12000: ->
    $('.bootstrap-logo').animate(opacity: 0, 500)
  12500: ->
    $('.main-menu').show()
    $('.bootstrap').remove()

for step, func of timeline
  setTimeout(func, parseInt(step))
