// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function () {
    if (document.querySelector('body.courses.index') == undefined) {
        return;
    }


    // $('.delete-todo').click(function (e) {
    // 	e.preventDefault();
    // 	let deletionUrl = e.target.getAttribute('href');

    // 	$.ajax({
    // 		method: 'DELETE',
    // 		url: deletionUrl,
    // 		success: function (data) {
    // 			$(e.target).parents('.main-todo').remove();
    // 			toastr.success('Your todo has been successfully deleted');
    // 		}
    // 	});
    // });


    $('.delete-course').on('ajax:success', function (e) {
        $(e.target).parents('.main-course').remove();
        toastr.success('Your Course has been successfully DELETED');
    });
});



//
//$(document).ready(function () {
//    if (document.querySelector('body.todos.new, body.todos.edit') == undefined) {
//        return;
//    }
//
//
//    console.log('this stuff is visible on my new and edit page');
//});
