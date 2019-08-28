import 'bootstrap';

// $("input").hide();
// $(".icon-click").not(current).removeClass('fas');
// $(".icon-click").not(current).addClass('far');

// QUESTION FORM
$(document).on('click', '.icon-click', function() {
  const current = $(this);

  $(current.parent().prev()).prop("checked", true);

  current.addClass('fas');
  current.removeClass('far');

  const iconsForm = current.parent().parent()[0];
  const questionId = parseInt(iconsForm.dataset.questionId, 10);
  iconsForm.querySelectorAll(".icon-click").forEach((element) => {
    if (element !== this) {
      element.classList.remove('fas');
      element.classList.add('far');
    }
  })

  $(current).removeClass('icon-hover');
  $(".icon-click").not(current).addClass('icon-hover');

  if (questionId < 27) {
    document.getElementById(`question-title-${questionId + 1}`).scrollIntoView({
      behavior: 'smooth',
      block: 'start' //scroll to top of the target element
    });

  }
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


// $(document).on('click', 'label', function() {
//   var currentQuestion = $(this)
//   var currentId = currentQuestion.attr("id")
//   var nextId = parseInt(currentId) + 1;

//   var nextQuestion = currentQuestion.find("#2")
//   console.log(nextQuestion)

//   // $('html, body').animate({
//   //     scrollTop: nextQuestion.offset().top
//   // }, 1000);

// });


