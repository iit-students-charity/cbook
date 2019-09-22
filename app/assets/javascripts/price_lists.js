$(document).ready(function () {
  $("#provider-search__search-button").click(() => {
    var provider_id = $('#provider-id').text();
    var date = $('#datepicker').val();
    $.ajax({
      type: 'GET',
      url: '/price_lists.js',
      dataType: 'text',
      data: {
        provider_id: provider_id,
        date: date
      },
      success: function (response) {
        var body = $('tbody');
        body.empty();
        body.append(response);
      }
    });
  });
});
