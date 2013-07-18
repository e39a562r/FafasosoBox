@bootstrap = ->
  timeline =
    0: ->
     $('.bootstrap').animate(opacity: 1, 2000)
    2500: ->
      $('.bootstrap-loading img').show()
    10000: ->
      $('.bootstrap-loading').remove()
      $('.bootstrap-logo').animate(opacity: 1)
    12000: ->
      $('.bootstrap-logo').animate(opacity: 0, 500)
    12500: ->
      @mainMenu()
      $('.bootstrap').remove()

  for step, func of timeline
    setTimeout(func, parseInt(step))
