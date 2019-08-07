import 'bootstrap';

$("input").hide();

// QUESTION FORM
$(document).on('click', '.icon-click', function() {
  const current = $(this);

  $(current.parent().prev()).prop("checked", true);

  current.addClass('fas');
  current.removeClass('far');

  $(".icon-click").not(current).removeClass('fas');
  $(".icon-click").not(current).addClass('far');

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







