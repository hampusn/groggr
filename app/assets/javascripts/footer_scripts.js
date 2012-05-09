// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery-1.7.1.min.js
//= require idangerous.swiper-1.3.min.js

(function($, window, document, undefined) {
	$(function() {
		
		$('#menu-toggle').click(function(e) {
			e.preventDefault();
			$('#menu-container').slideToggle();
		});
		
		var mySwiper = $('.swiper-container').swiper({speed:300, mode:'vertical'});
		
		$('#next-receipt').click(function(e) {
			e.preventDefault();
			mySwiper.swipeNext();

		});
		$('#prev-receipt').click(function(e) {
			e.preventDefault();
			mySwiper.swipePrev();

		});
	  
		//$('.swiper-container').add('.swiper-slide').css('height', $(window).outerHeight());
				
	});
})(jQuery, this, this.document);