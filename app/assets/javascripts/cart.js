var init_cart ;

$(document).ready(function() {
  var item = $('.cart-item').text();
  if(!item || item == '0'){
    $('.cart-item').text(0);
  }
  init_cart();
  add_cart();
});
init_cart = function() {
  var cart = localStorage.getItem("cart-id");
  if(!cart){
    $.ajax({ url: '/addcart', success: function(result){
      localStorage.setItem("cart-id",result.cart_id);
    }});
  }

}
add_cart = function(){
    $('#cart-lookup-form').on('ajax:success', function(event, data, status){
      var item = $('.cart-item').text();
      item = parseInt(item) + 1;
      var data = event.detail[0];
      if(data){
        $('.cart-item').text(item);
      }else{
        $('.minicart').replaceWith('<i class="fa fa-refresh fa-spin fa-2x fa-fw" style="color:#fff"></i>');
      }
    });
  }
