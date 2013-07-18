@mainMenu = ->
  $('.main-menu').show()

  currentItem = 0

  mainMenuKeyboardHandler = (e) ->
    switch e.which
      when 38 # UP
        currentItem = (currentItem + 3) % 4
        $('.menu-item').removeClass('on').eq(currentItem).addClass('on')
      when 40 # DOWN
        currentItem = (currentItem + 1) % 4
        $('.menu-item').removeClass('on').eq(currentItem).addClass('on')

  $('body').on('keydown', mainMenuKeyboardHandler)
