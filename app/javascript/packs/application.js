import 'bootstrap';

$("input").hide();

// $(".icon-click").not(current).removeClass('fas');
// $(".icon-click").not(current).addClass('far');

// QUESTION FORM
$(document).on('click', '.icon-click', function() {
  const current = $(this);

  $(current.parent().prev()).prop("checked", true);

  current.addClass('fas');
  current.removeClass('far');

  const iconsForm = current.parent().parent()[0]
  iconsForm.querySelectorAll(".icon-click").forEach((element) => {
    if (element !== this) {
      element.classList.remove('fas');
      element.classList.add('far');
    }
  })

  $(current).removeClass('icon-hover');
  $(".icon-click").not(current).addClass('icon-hover');
});

// PARTI FORM
$(document).on('click', '.parti-button', function() {
  const current = $(this);

  $(current.prev()).prop("checked", true);

  $(current).addClass('selected');

  $(".parti-button").not(current).removeClass('selected');
});

// DROPDOWN
$(".argument-dropdown").hide()
$(document).on('click', '.dropdown-text', function() {
  $(".dropdown-text .icon").toggleClass("rotate");
  $(".argument-dropdown").slideToggle('slow')
});

$('.jump-to-next').on('click', function() {
  var elem = $(".jump-to-next").eq( $(".jump-to-next").index( $(this) ))
  $(window).animate ({scrollTop:0}, 500);
});



