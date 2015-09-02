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

	$('.save_button').click(function(e) {
		e.preventDefault();

		$.ajax({
			type: 'post',
			url: '/saveadventure',
			success: function(status) {
				if (status === 1) {
					$('.message').html("<h4>Saved!</h4>")
				}
				else if (status === 2) {
					$('.message').html("<h4>You already saved it! Stop clicking it!</h4>")	
				}
				else {
					$('.message').html("<h4><a href='/login'>Log in to save!</a></h4>")
				}
			},
			error: function() {
				alert("Something went wrong")
			}
		})
	})






})