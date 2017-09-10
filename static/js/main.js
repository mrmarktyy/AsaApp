$(function() {
  'use strict';

  getSectors();

  $('.btn-submit--stocks').click(function(event) {
    event.preventDefault();

    postSector().done(function(response) {
      swal("Done", null, "success");
      clearFormStock()
    });
  });

  function getSectors() {
    return $.ajax({
      url: '/sectors'
    }).done(function(response) {
      if (response.data) {
        $('.table--sectors tbody').empty();
        response.data.forEach(function(sector) {
          $('.table--sectors tbody').append(
            $('<tr><td>' + sector.Sector_id + '</td><td>' + sector.Sector_name + '</td></tr>')
          );
          $('.sector_id--select').append(
            $('<option>').attr('value', sector.Sector_id).text(sector.Sector_name)
          );
        });
      }
    });
  }

  function postSector() {
    return $.ajax({
      url: '/sectors',
      method: 'POST',
      data: {
        stock_id: $('#Stock_ID').val(),
        company_name: $('#Company_Name').val(),
        sector_id: $('#Sector_ID').val(),
        bought: $('#Bought').prop('checked') ? 1 : 0,
        watched: $('#Watched').prop('checked') ? 1 : 0,
        dividend: $('#Dividend').prop('checked') ? 1 : 0,
        drp: $('#DRP').prop('checked') ? 1 : 0,
        market_cap_million: $('#Market_Cap_Million').val()
      }
    });
  }

  function clearFormStock() {
    $('#Stock_ID').val('');
    $('#Company_Name').val('');
    $('#Sector_ID').val('');
    $('#Bought').prop('checked', false);
    $('#Watched').prop('checked', false);
    $('#Dividend').prop('checked', false);
    $('#DRP').prop('checked', false);
    $('#Market_Cap_Million').val('');
  }

});
