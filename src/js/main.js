function setBackground() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center"
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat"
		});
	});
}

function searchshow() {
	$(".search-toggle").on("click", function () {
		$(".searchbox").toggleClass("active");
	});
}
// Mobile Toggle

function mobileToggle() {
	$("header .mobile-toggle em").on("click", function () {
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
		speed: 1500,
		// effect: "coverflow",
		// slideShadows: true,
		// modifier: 1,
		// duration: 3000,
		cubeEffect: {
			slideShadows: false
		},
		autoplay: {
			delay: 3000
		}
	});
	var swiperBusiness = new Swiper(".business .swiper-container", {
		slidesPerView: 4,
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
			el: ".product-slider2 .swiper-pagination",
			clickable: true,
			type: "bullets"
		},
		// autoplay: {
		//     delay: 3000,
		//     disableOnInteraction: false,
		// },
		breakpoints: {
			// when window width is <= 480px
			480: {
				slidesPerView: 2,
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
			el: ".home-news .swiper-pagination",
			clickable: true,
			type: "bullets"
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

	var ProjectSlider = new Swiper(".project-1 .project-list .swiper-container", {
		slidesPerView: 3,
		centeredSlides: true,
		spaceBetween: -600,
		loopedSlides: 6,
		autoplay: {
			delay: 4500
		},
		speed: 500,
		navigation: {
			prevEl: ".project-1 .project-list .btn-prev",
			nextEl: ".project-1 .project-list .btn-next"
		},
		pagination: {
			el: ".project-1 .project-list .swiper-pagination",
			clickable: true
		},
		on: {
			slideChange: function () {
				var activeIndex = this.activeIndex;
				var realIndex = this.slides
					.eq(activeIndex)
					.attr("data-swiper-slide-index");
				$(".swiper-slide").removeClass(
					"swiper-slide-nth-prev-2 swiper-slide-nth-next-2"
				);
				$('.swiper-slide[data-swiper-slide-index="' + realIndex + '"]')
					.prev()
					.prev()
					.addClass("swiper-slide-nth-prev-2");
				$('.swiper-slide[data-swiper-slide-index="' + realIndex + '"]')
					.next()
					.next()
					.addClass("swiper-slide-nth-next-2");
			},
			init: function () {
				setTimeout(function () {
					$(
						".project-1 .project-list .swiper-container .swiper-slide .imgbox a"
					).each(function () {
						$(this).height($(this).width() / (730 / 480));
					});
				}, 800);
			},
			resize: function () {
				setTimeout(function () {
					$(
						".project-1 .project-list .swiper-container .swiper-slide .imgbox a"
					).each(function () {
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
	});

	var galleryThumbsProject = new Swiper('.project-gallery-thumbs', {
		spaceBetween: 30,
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
	});
	var galleryTopProject = new Swiper('.project-gallery-top', {
		spaceBetween: 0,
		slidesPerView: 1,
		autoplay: {
			delay: 2500,
		},
		speed: 1500,
		thumbs: {
			swiper: galleryThumbsProject,
		},
	});






	var galleryThumbs = new Swiper(".gallery-thumbs", {
		slidesPerView: 5,
		spaceBetween: 20,
		// speed: 1200,
		// loop: true,
		// slideToClickedSlide: true,
		// centeredSlides: true,
		// loopedSlides: 5,
		// autoplay: {
		//   delay: 3200,
		//   // disableOnInteraction: false
		// },
		breakpoints: {
			768: {
				slidesPerView: 3
			},
			576: {
				slidesPerView: 4,
				spaceBetween: 10
			}
		}
	});
	var galleryTop = new Swiper(".gallery-top", {
		spaceBetween: 20,
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev"
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
	$("[data-nav]").on("change", function () {
		var selectHref = $(this).val();
		if (selectHref.length > 0) {
			window.location.assign(selectHref);
		}
	});
}

function gotop() {
	$("#gotop").on("click", function () {
		$("html,body").animate({
				scrollTop: 0
			},
			1000
		);
	});
}

function tabActive() {
	$(".tab-navigation-wrapper li a").on("click", function () {
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

function tabCustomer() {
	$(".tab-navigation a").on("click", function () {
		$(this)
			.parents(".tab-navigation nav")
			.find("nav")
			.removeClass("active");
		$(this)
			.parents("a")
			.addClass("active");

		var display = $(this).attr("data-tab");
		$(".tab-content").removeClass("active");
		$("#" + display).addClass("active");
	});
}

function newsTabs() {
	$(".tab-navigation a").click(function () {
		var tab_id = $(this).attr("data-type");

		$(".tab-navigation a").removeClass("active");
		$(".tab-item").removeClass("active");

		$(this).addClass("active");
		$("#" + tab_id).addClass("active");
	});
}

function productCategoryDashboard() {
	let li = $(".product-by-category-wrapper ul  li");
	let title = $(".product-by-category-wrapper ul  li .title-caption");
	let content = $(".product-by-category-wrapper ul li .product-wrapper");
	var body = $("html, body");
	title.click(function () {
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
				.slideDown("slow", function () {
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

function menuMobile() {
	$(".drop-down").on("click", function () {
		console.log($(this));
		$(".nav-sub").toggleClass("active");
	});
}

function Aos() {
	AOS.init({
		duration: 1200
	});
}

function partners() {
	$(".partner").on("click", function () {
		$(".partners-wrapper").toggleClass("active");
	});
}

function IndexHideIntro() {
	if (window.location.href.indexOf("Default.aspx") > -1) {
		$(".language-page").addClass("active");
	} else {
		$(".language-page").removeClass("active");
	}
}


$(window).on('load', function () {
	// code here

	let bg = $('.product-nav .product-wrapper nav a:first-child').attr('data-image');
	if (bg != '') {
		$("#bg").removeClass();
		$("#bg").css({
			"background-image": "url(" + bg + ")",
			"transtion": "all.3s ease-in-out"
		})
	}
});


function changeBg() {



	$("nav a").hover(function () {
		var value = $(this).attr('data-image')
		if (value != '') {
			hoverContent(value);
		}


	});

	function hoverContent(value) {
		$("#bg").removeClass();
		$("#bg").css({
			"background-image": "url(" + value + ")",
			"transtion": "all.3s ease-in-out"
		})
	}
	// $("nav a").hover(function() {
	//   $(".bg1").css("background-image", "url(" + $(this).data("bg") + ")");
	//   $(".bg1").addClass('animation')
	// });
}

function CustomSelect() {
	var x, i, j, selElmnt, a, b, c;
	/*look for any elements with the class "custom-select":*/
	x = document.getElementsByClassName("custom-select");
	for (i = 0; i < x.length; i++) {
		selElmnt = x[i].getElementsByTagName("select")[0];
		/*for each element, create a new DIV that will act as the selected item:*/
		a = document.createElement("DIV");
		a.setAttribute("class", "select-selected");
		a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
		x[i].appendChild(a);
		/*for each element, create a new DIV that will contain the option list:*/
		b = document.createElement("DIV");
		b.setAttribute("class", "select-items select-hide");
		for (j = 1; j < selElmnt.length; j++) {
			/*for each option in the original select element,
			create a new DIV that will act as an option item:*/
			c = document.createElement("DIV");
			c.innerHTML = selElmnt.options[j].innerHTML;
			c.addEventListener("click", function (e) {
				/*when an item is clicked, update the original select box,
				and the selected item:*/
				var y, i, k, s, h;
				s = this.parentNode.parentNode.getElementsByTagName("select")[0];
				h = this.parentNode.previousSibling;
				for (i = 0; i < s.length; i++) {
					if (s.options[i].innerHTML == this.innerHTML) {
						s.selectedIndex = i;
						h.innerHTML = this.innerHTML;
						y = this.parentNode.getElementsByClassName("same-as-selected");
						for (k = 0; k < y.length; k++) {
							y[k].removeAttribute("class");
						}
						this.setAttribute("class", "same-as-selected");
						break;
					}
				}
				h.click();
			});
			b.appendChild(c);
		}
		x[i].appendChild(b);
		a.addEventListener("click", function (e) {
			/*when the select box is clicked, close any other select boxes,
			and open/close the current select box:*/
			e.stopPropagation();
			closeAllSelect(this);
			this.nextSibling.classList.toggle("select-hide");
			this.classList.toggle("select-arrow-active");
		});
	}

	function closeAllSelect(elmnt) {
		/*a function that will close all select boxes in the document,
		except the current select box:*/
		var x,
			y,
			i,
			arrNo = [];
		x = document.getElementsByClassName("select-items");
		y = document.getElementsByClassName("select-selected");
		for (i = 0; i < y.length; i++) {
			if (elmnt == y[i]) {
				arrNo.push(i);
			} else {
				y[i].classList.remove("select-arrow-active");
			}
		}
		for (i = 0; i < x.length; i++) {
			if (arrNo.indexOf(i)) {
				x[i].classList.add("select-hide");
			}
		}
	}
	/*if the user clicks anywhere outside the select box,
	then close all select boxes:*/
	document.addEventListener("click", closeAllSelect);
}

$(document).ready(function () {
	partners();
	setBackground();
	searchshow();
	swiperInit();
	projectSelect();
	mobileToggle();
	mappingNavigation();
	mappingSearch();
	mapppingLink();
	gotop();
	tabActive();
	productCategoryDashboard();
	newsTabs();
	menuMobile();
	Aos();
	changeBg();
	IndexHideIntro();
	CustomSelect();
	formApply();
	showMore();
	tabCustomer();
	fancybox();
	mobileListItem();
	showmore();
	aboutPartner();
});

function mobileListItem() {
	$(".dropdown").on("click", function () {
		$(".nav-sub").toggleClass("active");
		// if ($(this).find('.nav-sub').is(':hidden')) {
		//     $(this).find('.nav-sub').slideDown()
		// } else {
		//     $(this).find('.nav-sub').slideUp()
		// }
	});
}
// $(document).ready(function() {
// 	$(".fancybox-gallery").fancybox({
// 		prevEffect	: 'none',
//     nextEffect	: 'none',
//     thumbs: true,
// 		helpers	: {
// 			title	: {
// 				type: 'outside'
// 			},
// 			thumbs	: {
// 				width	: 50,
// 				height	: 50
// 			}
// 		}
// 	});
// });
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
		mobileWrapper: ".language-wrapper",
		mobileMethod: "insertBefore",
		desktopWrapper: ".language-wrapper",
		desktopMethod: "insertBefore",
		breakpoint: 1360
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
function formApply() {
	$(".main-button").on("click", function () {
		$(".form-apply").slideToggle();
	});
}

function showMore() {
	$(".swiper-slide")
		.slice(0, 20)
		.show();
	$(".view-more-brand").click(function (e) {
		e.preventDefault();
		$(".swiper-slide:hidden")
			.slice(0, 5)
			.fadeIn("slow");

		if ($(".swiper-slide:hidden").length == 0) {
			$(".view-more-brand").fadeOut("slow");
		}
	});
}

function showmore() {
	$(".tab-content .col")
		.slice(0, 50)
		.show();
	$(".view-more-brand").click(function (e) {
		e.preventDefault();
		$(".tab-content .col:hidden")
			.slice(0, 10)
			.fadeIn("slow");

		if ($(".tab-content .col:hidden").length == 0) {
			$(".view-more-brand").fadeOut("slow");
		}
	});
}

function aboutPartner() {
	$(".khach-hang-slider .swiper-slide")
		.slice(0, 10)
		.show();
	$(".view-more-brand").click(function (e) {
		e.preventDefault();
		$(".khach-hang-slider .swiper-slide:hidden")
			.slice(0, 5)
			.fadeIn("slow");

		if ($(".khach-hang-slider .swiper-slide:hidden").length == 0) {
			$(".view-more-brand").fadeOut("slow");
		}
	});
}

function fancybox() {
	$('[data-fancybox="image"]').fancybox({
		thumbs: {
			autoStart: true,
			axis: "x"
		},
		buttons: ["zoom", "download", "close"]
	});
}