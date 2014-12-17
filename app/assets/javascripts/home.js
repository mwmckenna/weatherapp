$(".flash").ready(function(){
  $(".flash").delay(3000).slideUp(2500);
});

var is_email = new RegExp("\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b");

var nu_frm = "form.new_user";

$(nu_frm).on("submit", function(e){
  e.preventDefault();
  if (document.getElementById("user_username").value.match(is_email) == null){
    alert("Your username needs to be an email");
  }
  if (document.getElementById("user_password").value == ""){
    alert("Please create a password for this account.");
  }

});

var lg_frm = ".signuplog-form form";

$(lg_frm).on("submit", function(e){
  e.preventDefault();
  if (document.getElementById("user_username").value.match(is_email) == null){
    alert("Your username is an email.");
  }
  if (document.getElementById("user_password").value == ""){
    alert("Please input a password for this account.");
  }

});

// log out our location
var lat;
var long;
navigator.geolocation.getCurrentPosition(function(data){
  console.log(data.coords);
  $.getJSON("http://api.wunderground.com/api/ad4b2b48ae07c31f/geolookup/q/" + data.coords.latitude+ "," + data.coords.longitude+ ".json", function(data){
    console.log(data)
    var items =[];
    $.each( data, function(key, val){
      items.push( "<li id='" + data.location.city + "'>" + data.location.city + "</li>" );
      });

    $( "<ul/>", {
     "class": "my-new-list",
      html: items.join( "" )
    }).appendTo( "body" );
    });
  });

