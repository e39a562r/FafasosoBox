@playMenu = ->
  $('.console').show().addClass('play')

  playMenuKeyboardHandler = (e) ->
    switch e.which
      when Gamepad.UP
        if selectedItem > 0
          selectItem(selectedItem - 1)
      when Gamepad.DOWN
        size = $('.play-menu-game').size()
        if selectedItem < size - 1
          selectItem(selectedItem + 1)
      when Gamepad.A
        selectedGame = $('.play-menu-game').eq(selectedItem).data()
        url = selectedGame.gameUrl
        window.open url
      when Gamepad.B
        $('body').off('keydown', playMenuKeyboardHandler)
        $('.play-menu-games').hide()
        mainMenu()

  selectedItem = 0
  selectItem = (item) ->
    selectedItem = item
    $('.play-menu-game').removeClass('selected prev-1 prev-2 prev next-1 next-2 next')
    $('.play-menu-game').eq(item).addClass('selected')
                        .next().addClass('next-1')
                        .next().addClass('next-2')
                        .nextAll().addClass('next')
    $('.play-menu-game').eq(item)
                        .prev().addClass('prev-1')
                        .prev().addClass('prev-2')
                        .prevAll().addClass('prev')

  timeline =
    200: ->
      $('.play-menu-games').hide()
      $('.play-menu-loading').show()
    1200: ->
      $('.play-menu-loading').hide()
      $('.play-menu-games').css(opacity: 0).show().animate(opacity: 1)
      $('body').on('keydown', playMenuKeyboardHandler)
      selectItem(2)

  for step, func of timeline
    setTimeout(func, parseInt(step))
