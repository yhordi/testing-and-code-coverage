$(document).ready(function(){
  bindListeners()
})

var bindListeners = function(){
  $('#create').on('submit', createRequest)
}

var createRequest = function(e){
  e.preventDefault()
  var url = $(this).attr('action')
  var data = $(this).serialize()
  var method = $(this).attr('method')
  $.ajax({
    url: url,
    data: data,
    type: method,
    dataType: 'JSON'
  }).done(function(response){
    appendArticle(response)
  })
}

var appendArticle = function(data){
  $('body').prepend(data.title)
  $('body').prepend(data.body)
}

