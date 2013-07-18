@mainMenu = ->
  $('.main-menu').show()

  currentItem = 0

  mainMenuKeyboardHandler = (e) ->
    switch e.which
      when Gamepad.UP
        currentItem = (currentItem + 3) % 4
        $('.menu-item').removeClass('on').eq(currentItem).addClass('on')
      when Gamepad.DOWN
        currentItem = (currentItem + 1) % 4
        $('.menu-item').removeClass('on').eq(currentItem).addClass('on')

  timeline =
    0: ->
      $('.outside').first().removeClass('outside')
    100: ->
      $('.outside').first().removeClass('outside')
    200: ->
      $('.outside').first().removeClass('outside')
    300: ->
      $('.outside').first().removeClass('outside')
    500: ->
      $('body').on('keydown', mainMenuKeyboardHandler)

  for step, func of timeline
    setTimeout(func, parseInt(step))
