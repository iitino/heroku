$(function () {
    $('.slider').slick({
        autoplay: true,
        autoplaySpeed: 2000,
        arrows: true,
        prevArrow: '<button type="button" class="slick-prev" style="background-color:darkgrey;">Previous</button>',
        nextArrow: '<button type="button" class="slick-next" style="background-color:darkgrey;">next</button>',
        dots: true,
        pauseOnHover: true
    });
});