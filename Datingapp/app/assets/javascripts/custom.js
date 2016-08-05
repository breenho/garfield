/* Custom JS */
$( document ).ready(function() {
	// Material UI
    $.material.init();
    // Select box style
    $(".selectDropdown").dropdown({ "autoinit" : ".select" });
    // Tooltip
    $('[data-toggle="tooltip"]').tooltip();

   
   if($(".profile-carousel").length>0){
	    $('.profile-carousel').owlCarousel({
		    loop:true,
		    margin:10,
		    nav:false,
		    dots:true,
		    items:1
		});
	}

    if($(".has-nicescroll").length>0){
    	$(".has-nicescroll").niceScroll();
    }

    $('.datePicker').datepicker({
    	dateFormat: 'yy-mm-dd',
    	yearRange:'-90:-16',
		changeMonth: true,
		changeYear: true
    });


});
	// Message script
	$('.chat[data-chat=person2]').addClass('active-chat');
	$('.chat[data-chat=person2]').addClass('has-nicescroll');
	$('.person[data-chat=person2]').addClass('active');

	$('.msg-aside .person').mousedown(function() {
	    if ($(this).hasClass('.active')) {
	        return false;
	    } else {
	        var findChat = $(this).attr('data-chat');
	        var personName = $(this).find('.name').text();
	        $('.chat').removeClass('active-chat');
	        $('.chat').removeClass('has-nicescroll');
	        $('.msg-aside .person').removeClass('active');
	        $(this).addClass('active');
	        $('.chat[data-chat = ' + findChat + ']').addClass('active-chat');
	        $('.chat[data-chat = ' + findChat + ']').addClass('has-nicescroll');
	    }
	});
