$(document).ready(function () {
  $("#owl-one").owlCarousel({
    items: 1,
    loop: true,
    //   nav: true,
    lazyLoad: true,
    autoplay: true,
    autoplayTimeout: 5000,
    autoplayHoverPause: true,
    animateOut: "fadeOut",
  });
  $("#owl-two").owlCarousel({
    items: 1,
    loop: true,
    //   nav: true,
    lazyLoad: true,
    autoplay: true,
    autoplayTimeout: 4000,
    autoplaySpeed: 1000,
    autoplayHoverPause: true,
  });

  $("#noticeNextBtn").click(function (e) {
    e.preventDefault();
    console.log("click");
    $(".newsSectionGroup").animate(
      {
        marginLeft : "-1903px",
      },
      300
    );
  });
  $("#noticePrevBtn").click(function (e) {
    e.preventDefault();
    console.log("click");
    $(".newsSectionGroup").animate(
      {
        marginLeft: "0px",
      },
      300
    );
  });
});

