$(document).ready(function(){
    $("#personnel .owl-carousel").owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 3
            }
        }
    });

    $("#sponsors .owl-carousel").owlCarousel({
        dots: true,
        items: 5
    });

    $("#projects .owl-carousel").owlCarousel({
        nav: true,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            700: {
                items: 2
            },
            1000: {
                items: 3
            }
        }
    });

    $("#testimonials .owl-carousel").owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        items: 1
    });

    var maxLength = 100;
	$(".press-news-exp").each(function(){
		var myStr = $(this).text();
		if($.trim(myStr).length > maxLength) {
			var newStr = myStr.substring(0, maxLength);
			$(this).empty().html(newStr);
			$(this).append(' <a href="#" class="read-more">read more...</a>');
		}
	});
})

    let map;
    function initMap() {
        map = new google.maps.Map(document.getElementById("map"), {
        center: { lat: -34.397, lng: 150.644 },
        zoom: 10,
    });
    }

// AIzaSyBgOlCTugpzUT1dzajbI0VahHtIC9jvutw