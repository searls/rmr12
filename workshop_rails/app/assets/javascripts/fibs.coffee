class window.FibsForm
  bindEvents: ->
    $('button.calculate').on('click', @calculate)

  calculate: (event) =>
    event.preventDefault()
    $.ajax
      type: 'post'
      url: '/fibs'
      data:
        index: parseInt($('input[name=index]').val(), 10)
      success: @renderResult

  renderResult: (result) ->
    $('.result').text(result)

$ ->
  new FibsForm().bindEvents()