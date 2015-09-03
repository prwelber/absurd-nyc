$(document).ready(function() {
	$('.submit_button').click(function() {
		// AT&T GIF
		$('.loading-content').html("<img src='http://i.kinja-img.com/gawker-media/image/upload/ex9sgvlnuxlxicocpri4.gif'>")
		// AWESOME CAT GIF
		// $('.loading-content').html("<img src='http://static.tumblr.com/b96d05500523227c6fab41adcbadecab/y0n7dse/sCenragt8/tumblr_static_d9b0oip3jm04coc0ook80w040.gif'>")
	})
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