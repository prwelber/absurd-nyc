// counter = 0;

// function nextDiv() {
// 	counter++;
// 	$("#box"+counter).slideDown();
// }

$(document).ready(function() {
	$('.submit_button').click(function() {
		$('.loading-content').append("<img src='http://i.kinja-img.com/gawker-media/image/upload/ex9sgvlnuxlxicocpri4.gif'>")
	})
	// $('body').css('background-color','yellow');

	$('.testbutton').click(function() {
		$.ajax({
			type: 'get',
			url: '/ajax/index',
			success: function(stuff) {
				$.each(stuff, function(index, item) {
					$('.ajaxres').append("<p>item</p>")
				})
			}
		})
	})






})