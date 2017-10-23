var init_cart;
var items = [
  {"subject_id" : "1", "value" : 1},
  {"subject_id" : "2", "value" : 2},
];
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
  var items = localStorage.getItem("items");
  if(!cart){
    $.ajax({ url: '/addcart', success: function(result){
      localStorage.setItem("cart-id",result.cart_id);
    }});
  }
  if(items){

  }

}
update_cart = function(subjec_id){
  var items = localStorage.getItem("items");
  var flag = 0;
  if(items){
      for(var i=0;i<items.length;i++){
        if(items[i].subject_id == subject_id){
            items[i].value+=1;
            flag = 1;
            console.log(items[i]);
         }
      }
  }else{
    var items = [];
    localStorage.setItem("items",);
  }
  // item = parseInt(item) + 1;
}

add_cart = function(){
    $('#cart-lookup-form').on('ajax:success', function(event, data, status){
      item = update_cart($('#subject_id').val());
      var data = event.detail[0];
      if(data){
        $('.cart-item').text(item);
      }else{
        $('.minicart').replaceWith('<i class="fa fa-refresh fa-spin fa-2x fa-fw" style="color:#fff"></i>');
      }
    });
  }
