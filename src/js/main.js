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
        spaceBetween: 20
      },
      // when window width is >= 480px
      1025: {
        slidesPerView: 5
      },
      // when window width is >= 640px
      1441: {
        slidesPerView: 6,
        spaceBetween: 20
      }
    },
    speed: 1250,
    navigation: {
      nextEl: ".navigation-partner-next",
      prevEl: ".navigation-partner-prev"
    }
  });
  var swiperHomeSlide = new Swiper(".home-slider1 .swiper-container", {
    autoplay: {
      delay: 4000,
      speed: 1000
    }
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
        slidesPerView: 3,
        spaceBetween: 30
      },
      1025: {
        slidesPerView: 4,
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
}
$(document).ready(function() {
  setBackground();
  searchshow();
  swiperInit();

  mobileToggle();
  mappingNavigation();
  mappingSearch();
  mapppingLink();
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
    desktopWrapper: ".header-wrapper-right",
    desktopMethod: "appendTo",
    breakpoint: 1025
  }).watch();
}
function mapppingLink() {
  return new MappingListener({
    selector: ".group-link-wrapper",
    mobileWrapper: ".mobile-wrapper",
    mobileMethod: "appendTo",
    desktopWrapper: ".language-wrapper",
    desktopMethod: "insetAfter",
    breakpoint: 1025
  }).watch();
}
//Toggle Search
$(".search-toggle").on("click", function() {
  $(".searchbox").toggleClass("active");
});
