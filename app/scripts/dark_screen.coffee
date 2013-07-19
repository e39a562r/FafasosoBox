@darkScreen = ->
  darkScreenKeyboardHandler = (e) ->
    $('body').off('keydown', darkScreenKeyboardHandler)
    bootstrap()

  $('body').on('keydown', darkScreenKeyboardHandler)
