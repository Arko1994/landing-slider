$(window).on('load', function() { 
    $('#preloader').delay(1000).fadeOut('slow');
    $('#preloader img').css({'animation':'pulse .5s linear'})
    
    setTimeout(function(){
            $('#preloader img').removeClass('preloader-pulse');
            $('#preloader img').addClass('preloader-anim');
      },500);
});

var owl = $('.owl-main');
owl.owlCarousel({
    dots:true,
    items:1,
    animateOut: 'fadeOut',
    mouseDrag: false
});

owl.on('mousewheel', '.owl-stage', function (e) {
    if (e.deltaY>0) {
        owl.trigger('prev.owl');
    } else {
        owl.trigger('next.owl');
    }
    e.preventDefault();
});

$('.owl-reviews').owlCarousel({
    nav:true,
    items:1,
    dots:false,
    navText: ["<img src='assets/img/nav-btn.png'>","<img src='assets/img/nav-btn.png'>"]
});

/*var owlItems = document.querySelectorAll('.owl-item');
var owlItems = document.getElementsByClassName('owl-item');

for (var i = 0; i < owlItems.length; i++) {
    if (owlItems[i].classList.contains('active')) {
        
    }
}
*/