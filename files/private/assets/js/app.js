// Swiper
$(function () {
    if ($.fn.swiper) {
        var swiper = $('.swiper-container').swiper({
            loop: true,
            autoplay: 5000,
            speed: 600,
            resizeReInit: true,
            calculateHeight: true,
            initialSlide: 0
        });

        $('.swiper-nav').find('.next').on('click', function () {
            swiper.swipeNext();
        });

        $('.swiper-nav').find('.prev').on('click', function () {
            swiper.swipePrev();
        });
    }
});

$(document).ready(function(){

    // RWD MENU
    $('.nav-trigger').on('touchstart mousedown', function(e){
        $('html').toggleClass('off-canvas');
        e.preventDefault();
    });

    // Popup
    if ($.fn.magnificPopup) {
        $('.popup').magnificPopup({
            type: 'image',
            closeOnContentClick: true,
            closeBtnInside: true,
            showCloseBtn: false,
            mainClass: 'mfp-with-zoom mfp-img-mobile mfp-ux-navi',
            image: {
                verticalFit: true
            },
            zoom: {
                enabled: true,
                duration: 300, // don't foget to change the duration also in CSS
                opener: function (element) {
                    return element.find('img');
                }
            },
            gallery: {
                enabled: true,
                navigateByImgClick: false
            },
            callbacks: {
                buildControls: function () {
                    console.log(this);

                    // re-appends controls inside the main container
                    if (this.arrowLeft) {
                        this.arrowLeft.appendTo(this.contentContainer);
                        this.arrowRight.appendTo(this.contentContainer);
                    }
                }
            }
        });

        // Dodanie ikonki Zoom dla popupa
        $(function () {
            var $popup = $('.popup');

            var zoomIcoW = 80;
            var zoomIcoH = 80;

            $.each($popup, function () {
                var popupW = $(this).find('img').width();
                var centerW = (popupW / 2) - (zoomIcoW / 2);
                var popupWH = $(this).find('img').height();
                var centerH = (popupWH / 2) - (zoomIcoH / 2);

                var zoom = '<span class="fancyZoom" style="left:' + centerW + 'px; top:' + centerH + 'px;"></span>';
                $(this).append(zoom);
            });
        });
    }
});