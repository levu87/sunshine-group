function setBackground() {
  $("[setBackground]").each(function() {
    var background = $(this).attr("setBackground");
    $(this).css({
      "background-image": "url(" + background + ")",
      "background-size": "cover",
      "background-position": "center center"
    });
  });
  $("[setBackgroundRepeat]").each(function() {
    var background = $(this).attr("setBackgroundRepeat");
    $(this).css({
      "background-image": "url(" + background + ")",
      "background-repeat": "repeat"
    });
  });
}

function searchshow() {
  $(".button-search").on("click", function() {
    $(".searchbox").toggleClass("active");
  });
}
// Mobile Toggle

function mobileToggle() {
  $("header .mobile-toggle em").on("click", function() {
    $(".mobile-wrapper").toggleClass("active");
  });
}

function swiperInit() {
  var partnerSwiper = new Swiper(".partnet-swiper-wrapper .swiper-container", {
    // Optional parameters
    loop: true,
    autoplay: {
      delay: 2500
    },
    spaceBetween: 40,
    breakpointsInverse: true,
    breakpoints: {
      // when window width is >= 320px
      320: {
        slidesPerView: 2,
        spaceBetween: 20
      },
      576: {
        slidesPerView: 3,
        spaceBetween: 20
      },
      768: {
        slidesPerView: 4,
        spaceBetween: 40
      },
      // when window width is >= 480px
      1025: {
        slidesPerView: 5
      },
      // when window width is >= 640px
      1441: {
        slidesPerView: 6,
        spaceBetween: 40
      }
    },
    speed: 1250,
    navigation: {
      nextEl: ".navigation-partner-next",
      prevEl: ".navigation-partner-prev"
    }
  });
  var swiperHomeSlide = new Swiper(".home-slider1 .swiper-container", {
    loop: true,
		speed: 750,
		effect: "fade",
		observer: true,
		observeParents: true,
    autoplay: {
			delay: 3000
		},
		fadeEffect: {
			crossFade: true
		},
  });
  var swiperBusiness = new Swiper(".business .swiper-container", {
    slidesPerView: 5,
    spaceBetween: 15,
    navigation: {
      nextEl: ".business-button-next",
      prevEl: ".business-button-prev"
    },
    // autoplay: {
    //     delay: 3000,
    //     disableOnInteraction: false,
    // },
    breakpoints: {
      // when window width is <= 480px
      480: {
        slidesPerView: 1,
        spaceBetween: 20
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
    }
  });
  var swiperSlide2 = new Swiper(".product-slider2 .swiper-container", {
    slidesPerView: 4,
    spaceBetween: 15,
    navigation: {
      nextEl: ".product-button-next",
      prevEl: ".product-button-prev"
    },
    pagination: {
      el: '.product-slider2 .swiper-pagination',
      clickable: true,
      type: 'bullets'
    },
    // autoplay: {
    //     delay: 3000,
    //     disableOnInteraction: false,
    // },
    breakpoints: {
      // when window width is <= 480px
      480: {
        slidesPerView: 1,
        spaceBetween: 20
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
    }
  });
  var swiper = new Swiper(".home-project .swiper-container", {
    slidesPerView: 4,
    spaceBetween: 15,
    navigation: {
      nextEl: ".project-button-next",
      prevEl: ".project-button-prev"
    },
    // autoplay: {
    //     delay: 3000,
    //     disableOnInteraction: false,
    // },
    breakpoints: {
      // when window width is <= 480px
      480: {
        slidesPerView: 1,
        spaceBetween: 20
      },
      // when window width is <= 640px
      768: {
        slidesPerView: 2,
        spaceBetween: 30
      },
      992: {
        slidesPerView: 2,
        spaceBetween: 30
      },
      1025: {
        slidesPerView: 3,
        spaceBetween: 30
      }
    }
  });
  var swiper = new Swiper(".home-news .swiper-container", {
    slidesPerView: 4,
    spaceBetween: 15,
    navigation: {
      nextEl: ".news-button-next",
      prevEl: ".news-button-prev"
    },
    pagination: {
      el: '.home-news .swiper-pagination',
      clickable: true,
      type: 'bullets'
    },
    // autoplay: {
    //     delay: 3000,
    //     disableOnInteraction: false,
    // },
    breakpoints: {
      // when window width is <= 480px
      480: {
        slidesPerView: 1,
        spaceBetween: 20
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
    }
  });
    var swiper = new Swiper('.doitac-slider .swiper-container', {
      slidesPerView: 5,
      slidesPerColumn: 4,
      spaceBetween: 20,
      navigation: {
        nextEl: '.swiper-btn-next',
        prevEl: '.swiper-btn-prev'
      },
      // autoplay: {
      //   delay: 3000,
      //   disableOnInteraction: false,
      // },
      // If we need pagination
      pagination: {
        el: '.home-slider .swiper-pagination',
        clickable: true,
        type: 'bullets'
      },
      breakpoints: {
        // when window width is <= 320px
        320: {
          slidesPerView: 1,
          spaceBetween: 10
        },
        // when window width is <= 480px
        480: {
          slidesPerView: 2,
          spaceBetween: 20,
          autoplay: {
          delay: 2500,
          disableOnInteraction: false,
          },
        },
        // when window width is <= 640px
        768: {
          slidesPerView: 3,
          spaceBetween: 30
        },
        992: {
          slidesPerView: 2,
          spaceBetween: 30
        }
    },
    });
    
    var swiper = new Swiper('.khachhang-slider .swiper-container', {
      slidesPerView: 5,
      slidesPerColumn: 2,
      spaceBetween: 20,
      navigation: {
        nextEl: '.swiper-btn-next',
        prevEl: '.swiper-btn-prev'
      },
      breakpoints: {
        // when window width is <= 320px
        320: {
          slidesPerView: 1.5,
          spaceBetween: 10
        },
        // when window width is <= 480px
        480: {
        slidesPerView: 2,
        spaceBetween: 20,
        autoplay: {
        delay: 3000,
        disableOnInteraction: false,
      },
        },
        // when window width is <= 640px
        768: {
          slidesPerView: 3,
          spaceBetween: 30
        },
        992: {
          slidesPerView: 4,
          spaceBetween: 30
        }
    },
    });
    var ProjectSlider = new Swiper(".project-1 .project-list .swiper-container",{
        slidesPerView: 3,
        centeredSlides: true,
        spaceBetween: -600,
        allowTouchMove: false,
        loopedSlides: 6,
     
        autoplay: {
          delay: 4500
        },
        speed: 500,
        preventInteractionOnTransition: true,
        navigation: {
          prevEl: ".project-1 .project-list .btn-prev",
          nextEl: ".project-1 .project-list .btn-next"
        },
        pagination: {
          el: ".project-1 .project-list .swiper-pagination",
          clickable: true
        },
        on: {
          slideChange: function() {
            var activeIndex = this.activeIndex;
            var realIndex = this.slides
              .eq(activeIndex)
              .attr("data-swiper-slide-index");
            $(".swiper-slide").removeClass(
              "swiper-slide-nth-prev-2 swiper-slide-nth-next-2"
            );
            $(
              '.swiper-slide[data-swiper-slide-index="' +
                realIndex +
                '"]'
            )
              .prev()
              .prev()
              .addClass("swiper-slide-nth-prev-2");
            $(
              '.swiper-slide[data-swiper-slide-index="' +
                realIndex +
                '"]'
            )
              .next()
              .next()
              .addClass("swiper-slide-nth-next-2");
          },
          init: function() {
            setTimeout(function() {
              $(
                ".project-1 .project-list .swiper-container .swiper-slide .imgbox a"
              ).each(function() {
                $(this).height($(this).width() / (730 / 480));
              });
            }, 800);
          },
          resize: function() {
            setTimeout(function() {
              $(
                ".project-1 .project-list .swiper-container .swiper-slide .imgbox a"
              ).each(function() {
                $(this).height($(this).width() / (730 / 480));
              });
            }, 800);
          }
        },
        breakpoints: {
          1024: {
            spaceBetween: 20
          },
          768: {
            slidesPerView: 1,
            spaceBetween: 20,
            centeredSlides: false
          },
          576: {
            slidesPerView: 1,
            spaceBetween: 20,
            centeredSlides: false
          }
        }
      }
    );
    var galleryThumbs = new Swiper('.gallery-thumbs', {
    slidesPerView: 5,
		spaceBetween: 20,
		speed: 1200,
		loop: true,
		slideToClickedSlide: true,
		centeredSlides: true,
		loopedSlides: 5,
		autoplay: {
			delay: 3200,
			disableOnInteraction: false
		},
		breakpoints: {
			768: {
				slidesPerView: 3
			},
			576: {
				slidesPerView: 4,
				spaceBetween: 10
			}
		},
    });
    var galleryTop = new Swiper('.gallery-top', {
      spaceBetween: 20,
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      thumbs: {
        swiper: galleryThumbs
      }
    });
    var swiper = new Swiper(".product-brands .swiper-container", {
      slidesPerView: 5,
      spaceBetween: 0,
      breakpoints: {
        // when window width is <= 480px
        480: {
          slidesPerView: 1,
          spaceBetween: 20
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
      }
    });
    var galleryThumbs = new Swiper(".swiper-product-thumb .swiper-container", {
      spaceBetween: 20,
      freeMode: true,
      watchSlidesVisibility: true,
      slidesPerView: "4",
      watchSlidesVisibility: true,
      watchSlidesProgress: true
    });
    var galleryTop = new Swiper(".swiper-product-top .swiper-container", {
      effect: "fade",
      fadeEffect: {
        crossFade: true
      },
      thumbs: {
        swiper: galleryThumbs
      }
    });
}
function projectSelect() {
	$("[data-nav]").on("change", function() {
		var selectHref = $(this).val();
		if (selectHref.length > 0) {
			window.location.assign(selectHref);
		}
	});
}

function gotop() {
  $('#gotop').on('click', function() {
      $('html,body').animate({
          scrollTop: 0
      }, 1000)
  })
}
function tabActive() {
	$(".tab-navigation-wrapper li a").on("click", function() {
		$(this)
			.parents(".tab-navigation-wrapper")
			.find("li")
			.removeClass("active");
		$(this)
			.parents("li")
			.addClass("active");

		var display = $(this).attr("data-type");
		$(".tab-item").removeClass("active");
		$("#" + display).addClass("active");
	});
}

///news tabs///
// function newsTabs() {
// 	$(".tab-navigation a").on("click", function() {
// 		$(this)
// 			.parents(".tab-navigation")
// 			.find("li")
// 			.removeClass("active");
// 		$(this)
// 			.parents("li")
// 			.addClass("active");

// 		var display = $(this).attr("data-type");
// 		$(".tab-item").removeClass("active");
//     $("#" + display).addClass("active");
    
// 	});
// }
function newsTabs(){
  $('.tab-navigation a').click(function(){
		var tab_id = $(this).attr('data-type');

		$('.tab-navigation a').removeClass('active');
		$('.tab-item').removeClass('active');

		$(this).addClass('active');
		$("#"+tab_id).addClass('active');
	})
}


function productCategoryDashboard() {
	let li = $(".product-by-category-wrapper ul  li");
	let title = $(".product-by-category-wrapper ul  li .title-caption");
	let content = $(".product-by-category-wrapper ul li .product-wrapper");
	var body = $("html, body");
	title.click(function() {
		// content.slideToggle("slow", function() {
		// 	if (content.is(":visible")) {
		// 		$("html, body").animate({ scrollTop: content.offset().top });
		// 	}
		// });

		if (
			!$(this)
				.parent()
				.hasClass("active")
		) {
			$(".product-by-category-wrapper ul li .product-wrapper").slideUp();
			$(this)
				.next()
				.slideDown("slow", function() {
					$("html, body").animate({
						scrollTop: $(this).offset().top - 135
					});
				});

			li.removeClass("active");
			$(this)
				.parent()
				.addClass("active");
		} else {
			$(this)
				.next()
				.slideToggle();
			li.removeClass("active");
		}
	});
}

function menuMobile(){
  $(".drop-down").on("click", function() {
    console.log($(this))
    $(".nav-sub").toggleClass("active");
  });
}
function Aos(){
  AOS.init({
		duration: 1200,
		once: true,
		disable: 'phone',
		offset: 400,
	});
}
function partners(){
  $('.partner').on('click', function() {
    $(".partners-wrapper").toggleClass("active");
    
})
}
// function partners(){
//   $('.partners').on('click', function() {
//     if ($(this).siblings('.accordion-content').is(':hidden')) {
//         $('.item').removeClass('active')
//         $(this).parents('.item').addClass('active')
//         // $('.item .accordion-content').slideUp()
//         // $(this).siblings('.accordion-content').slideDown()
//     } else {
//         $('.item').removeClass('active')
//         // $('.item .accordion-content').slideUp()
//     }
// })
// }
$(document).ready(function() {
  partners()
  setBackground();
  searchshow();
  swiperInit();
  projectSelect();
  mobileToggle();
  mappingNavigation();
  mappingSearch();
  mapppingLink();
  gotop();
  tabActive()
  productCategoryDashboard()
  newsTabs()
  menuMobile()
  Aos()
});
// Mapping mobile

function mappingNavigation() {
  return new MappingListener({
    selector: ".navigation-wrapper",
    mobileWrapper: ".mobile-wrapper",
    mobileMethod: "appendTo",
    desktopWrapper: ".header-wrapper-right",
    desktopMethod: "prependTo",
    breakpoint: 1360
  }).watch();
}
function mappingSearch() {
  return new MappingListener({
    selector: ".search-wrapper-temp",
    mobileWrapper: ".mobile-wrapper",
    mobileMethod: "appendTo",
    desktopWrapper: ".language-wrapper",
    desktopMethod: "insertBefore",
    breakpoint: 1025
  }).watch();
}
function mapppingLink() {
  return new MappingListener({
    selector: ".group-link-wrapper",
    mobileWrapper: ".mobile-wrapper",
    mobileMethod: "appendTo",
    desktopWrapper: ".language-wrapper",
    desktopMethod: "insertAfter",
    breakpoint: 1025
  }).watch();
}
//Toggle Search
// $(".search-toggle").on("click", function() {
//   $(".search-wrapper-temp").toggleClass("active");
// });
