$(document).ready(function () {
  $("#provider-search__search-button").click(() => {
    var providerId = $('#provider-id').text();
    var date = $('#datepicker').val();
    $.ajax({
      type: 'GET',
      url: '/price_lists.js',
      dataType: 'text',
      data: {
        provider_id: providerId,
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
