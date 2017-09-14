$(document).ready(function() {
	/* Sign In and Sign Up tab functionalities */
	$('#sign-up-tab').click(function() {
		
		if (!$(this).hasClass('tab-plane-selected')) {
			$('#sign-up-tab').removeClass('tab-plane');
			$('#sign-in-tab').removeClass('tab-plane-selected');
			$('#sign-in-tab').removeClass('tab-plane-selected-right');
			$('#sign-up-content').removeClass('display-content');
			$('#sign-in-content').addClass('display-content');
			$('#sign-in-tab').addClass('tab-plane');
			$('#sign-up-tab').addClass('tab-plane-selected');
			$('#sign-up-tab').addClass('tab-plane-selected-left');
		}
	});
	$('#sign-in-tab').click(function() {
		
		if (!$(this).hasClass('tab-plane-selected')) {
			$('#sign-in-tab').removeClass('tab-plane');
			$('#sign-up-tab').removeClass('tab-plane-selected');
			$('#sign-up-tab').removeClass('tab-plane-selected-right');
			$('#sign-in-content').removeClass('display-content');
			$('#sign-up-content').addClass('display-content');
			$('#sign-up-tab').addClass('tab-plane');
			$('#sign-in-tab').addClass('tab-plane-selected');
			$('#sign-in-tab').addClass('tab-plane-selected-left');
		}
	});

	$('#hamberger').click(function() {
		$('#hamberger').toggleClass('active');
		if ($(this).hasClass('active')) {
			$('header').addClass('header');
		}
		else {
			$('header').removeClass('header');
		}
	});
});