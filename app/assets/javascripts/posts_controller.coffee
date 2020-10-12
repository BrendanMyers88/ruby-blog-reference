class PostsController
  indexAction: () ->
    super_secret_method()

  showAction: () ->
    $('body').css('background-color', '#aaaaaa')

  super_secret_method = ->
    console.log("super secret shit in here")

window.PostsController = PostsController
