
$(function() {
  console.log('document is ready!', new Date());
});

$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})

$('#myLoginModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})
