@playMenu = ->
  $('.main-menu').show().addClass('play')

  playMenuKeyboardHandler = (e) ->
    switch e.which
      when Gamepad.B
        $('body').off('keydown', playMenuKeyboardHandler)
        mainMenu()

  timeline =
    0: ->
      $('body').on('keydown', playMenuKeyboardHandler)

  for step, func of timeline
    setTimeout(func, parseInt(step))
