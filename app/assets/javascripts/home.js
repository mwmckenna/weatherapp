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
  $.getJSON("http://api.wunderground.com/api/ad4b2b48ae07c31f/geolookup/conditions/q/" + data.coords.latitude+ "," + data.coords.longitude+ ".json", function(data){
    console.log(data);
    var items = [];
      items.push( "<div id= geolocation >" + "Today in " + data.location.city + ", ");
      items.push( data.location.state + ": " + "</div>" );
      items.push( "<div class= col-md-2 id= weather-icon>" + "<img id=weather-icon-url src=" + data.current_observation.icon_url + ">");
      items.push( "<p id= weather-decrip>" + data.current_observation.weather + "</p> </div>");
      items.push( "<div class- col-md-4 id=weather-group><div id= the-weather> <p id= current-temp>" + "Temperature is: " + data.current_observation.temp_f + "</p>");
      items.push( "<p id= feels-like >" + "Feels like: " + data.current_observation.feelslike_f + "</p>");
      items.push( "<p id= precip >" + "Expected Precipitation: " + data.current_observation.precip_today_in + " inches </p> </div></div>");

    $( "<ul/>", {
     "class": "user-weather",
      html: items.join( "" )
    }).appendTo( "#weather-box" );
    console.log(data.current_observation.temp_f);
    $.get('/filter').done(function(wea){
      wea.forEach(function(w){
        if(w.temp_max > data.current_observation.temp_f && w.temp_min < data.current_observation.temp_f)
          console.log(w);
          $("#outfit-finder").append("<div class=col-md-3> <img class=img-responsive img-center src='"+ w.img_url + "'>");
          if(gon.current_user){
            console.log("you iz logged in!");
            $("#outfit-finder").append("<div class=col-sm-1 id=buttons><a href='" + w.api_url + "'><img src='http://i.imgur.com/P4PysNN.png' id='shopping-icon'>"+"</a></div></div>");
          }

      });
    });

    });
 });

