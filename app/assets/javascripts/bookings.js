$(document).ready(function(){
  setSeatPrice();
  checkSeatChecked();

  function checkSeatChecked() {
    $('.seat-booking-grid').click(function () {
      var doEnableButton = false
      $('.seat-booking-grid').each(function () {
        if ($(this).prop('checked')) {
          doEnableButton = true;
          console.log(doEnableButton)
        }
        if (!doEnableButton) {
          $('#book-ticket').prop('disabled', 'disabled')
        }
        else {
          $('#book-ticket').removeAttr("disabled");
        }
      });
    });
  }

  function setSeatPrice() {
    var seatPrice = 0
    var tax = 0
    var totalTax = 0
    $('.seat-booking-grid').click(function(){
      if($(this).prop('checked') == true) {
        seatPrice = seatPrice + parseInt($(this).attr('data'))
      }
      if($(this).prop('checked') == false) {
        seatPrice = seatPrice - parseInt($(this).attr('data'))
      }
      $(".ticket-total").text(seatPrice)
      tax = (18/100) * seatPrice
      totalTax = seatPrice + (tax * 1.0)
      $(".tax").text(tax)
      $(".total").text(totalTax)
      $("#ticket_total").val(totalTax)
    })
  }
});
