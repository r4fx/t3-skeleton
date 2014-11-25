// Main javascript file

$(document).ready(function(){

    // Popup example config
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

    }
});