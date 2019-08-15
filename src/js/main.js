function setBackground() {
    $('[setBackground]').each(function() {
        var background = $(this).attr('setBackground')
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-size": "cover",
            "background-position": "center center"
        })
    })
    $('[setBackgroundRepeat]').each(function() {
        var background = $(this).attr('setBackgroundRepeat')
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-repeat": "repeat"
        })
    })
}
function homeSlider1(){
    var swiper = new Swiper('.home-slider1 .swiper-container',{
        autoplay: {
            delay: 4000
        },
    });
}
function homeSlider2(){
    var swiper = new Swiper('.business .swiper-container', {
        slidesPerView: 5,
        spaceBetween: 15,
        navigation: {
            nextEl: '.business-button-next',
            prevEl: '.business-button-prev',
        },
        // autoplay: {
        //     delay: 3000,
        //     disableOnInteraction: false,
        // },
        breakpoints: {
            // when window width is <= 480px
            480: {
            slidesPerView: 1,
            spaceBetween: 20,
            
        },
            // when window width is <= 640px
            768: {
                slidesPerView: 2,
                spaceBetween: 30
            },
            992: {
                slidesPerView: 3,
                spaceBetween: 30
            },
            1025: {
                slidesPerView: 4,
                spaceBetween: 30
            }
        },
    });
}
function productSlider2(){
    var swiper = new Swiper('.product-slider2 .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 15,
        navigation: {
            nextEl: '.product-button-next',
            prevEl: '.product-button-prev',
        },
        // autoplay: {
        //     delay: 3000,
        //     disableOnInteraction: false,
        // },
        breakpoints: {
            // when window width is <= 480px
            480: {
            slidesPerView: 1,
            spaceBetween: 20,
            
        },
            // when window width is <= 640px
            768: {
                slidesPerView: 2,
                spaceBetween: 30
            },
            992: {
                slidesPerView: 3,
                spaceBetween: 30
            },
            1025: {
                slidesPerView: 4,
                spaceBetween: 30
            }
        },
    });
}
// function productSliderItem1(){
//     var swiper = new Swiper('.product-slider1 .item1 .swiper-container', {
//     navigation: {
//         nextEl: '.item1-button-next',
//     },
//     });
// }
////
function projectSlider(){
    var swiper = new Swiper('.home-project .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 15,
        navigation: {
            nextEl: '.project-button-next',
            prevEl: '.project-button-prev',
        },
        // autoplay: {
        //     delay: 3000,
        //     disableOnInteraction: false,
        // },
        breakpoints: {
            // when window width is <= 480px
            480: {
            slidesPerView: 1,
            spaceBetween: 20,
            
        },
            // when window width is <= 640px
            768: {
                slidesPerView: 2,
                spaceBetween: 30
            },
            992: {
                slidesPerView: 3,
                spaceBetween: 30
            },
            1025: {
                slidesPerView: 4,
                spaceBetween: 30
            }
        },
    });
}
function newsSlider(){
    var swiper = new Swiper('.home-news .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 15,
        navigation: {
            nextEl: '.news-button-next',
            prevEl: '.news-button-prev',
        },
        // autoplay: {
        //     delay: 3000,
        //     disableOnInteraction: false,
        // },
        breakpoints: {
            // when window width is <= 480px
            480: {
            slidesPerView: 1,
            spaceBetween: 20,
            
        },
            // when window width is <= 640px
            768: {
                slidesPerView: 2,
                spaceBetween: 30
            },
            992: {
                slidesPerView: 3,
                spaceBetween: 30
            },
            1025: {
                slidesPerView: 4,
                spaceBetween: 30
            }
        },
    });
}
function searchshow(){
    $('.button-search').on('click', function() {
        $('.searchbox').toggleClass('active')
    });
}
//Mobile Toggle

function mobileToggle() {
	$("header .mobile-toggle em").on("click", function() {
		$(".mobile-wrapper").toggleClass("active");
	});
}
function toggleMegaMenuMobile() {
	let parentNav = $(".navigation-wrapper ul li.has-mega em");
	parentNav.on("click", function() {
		$(this)
			.next()
			.parent()
			.toggleClass("active");
	});
	let exitMega = $(".navigation-wrapper ul li.has-mega .mega-wrapper em");
	exitMega.on("click", function() {
		$(this)
			.next()
			.parents(".has-mega")
			.removeClass("active");
	});
}
///
//toggle header
function toggleHeader() {
    $('.mobile-toggle').on('click', function() {
            $('.mobile-wrapper').toggleClass('active')
            $(this).toggleClass('active')
        })
        //   $(window).on('click', function() {
        //     $('.sidebar-menu').removeClass('active')
        //  })
}
function mappingNavigation() {
	return new MappingListener({
		selector: ".navigation-wrapper",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".header-wrapper-bottom",
		desktopMethod: "prependTo",
		breakpoint: 1200
	}).watch();
}
function mapppingLanguage() {
	return new MappingListener({
		selector: ".language-wrapper",
		mobileWrapper: ".header-wrapper-top",
		mobileMethod: "appendTo",
		desktopWrapper: ".header-wrapper-bottom",
		desktopMethod: "appendTo",
		breakpoint: 1200
	}).watch();
}
function mappingLink() {
	return new MappingListener({
		selector: ".group-link-wrapper",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".header-wrapper-bottom",
		desktopMethod: "appendTo",
		breakpoint: 1200
	}).watch();
}
$(document).ready(function() {
    setBackground()
    searchshow()
    homeSlider1()
    homeSlider2()
    // productSliderItem1()
    productSlider2()
    projectSlider()
    newsSlider()
    ///header
    toggleHeader()
    mobileToggle()
	mappingNavigation()
	mappingSearch()
	mapppingLanguage()
	mappingLink()
	toggleMegaMenuMobile()
});
