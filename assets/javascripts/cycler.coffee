# Place this file in assets/javascripts/
# Dashing compiles it to JavaScript

class @Cycler

  $ = jQuery

  constructor: (options) ->
    @boards = options.boards or []
    @duration = options.duration or 10
    @initialDelay = options.initialDelay or 0
    @width = options.width or 1920
    @height = options.height or 1080

    # Init counter
    @current = -1

    # Make sure there aren't any margins or padding
    $('body, #container').css margin: '0', padding: '0'

    # Open the boards in hidden iframes
    for board in @boards
      $('body').append "<iframe src='#{ board }' class='board' id='#{ board }' style='display: none; width: #{ @width }px; height: #{ @height }px; border: none;'></iframe>"

    # Give the boards the chance to load before showing the first iframe if `initialDelay` is set
    setTimeout ( => @next() ), @initialDelay * 1000


  next: ->
    # Hide previous board
    $('.board#' + @boards[@current]).css 'display', 'none'

    # Advance the counter
    @current = if @current < @boards.length - 1 then @current + 1 else 0

    # Show the next board
    $('.board#' + @boards[@current]).css 'display', 'block'

    # Start the cycle again after the duration has passed
    setTimeout ( => @next() ), @duration * 1000
