
function RestaurantController(){
	
	this.list = function(){
		var url = "/Domi/restaurant/ajaxList"; // the script where you handle the form input.
	    $.ajax({
	           type: "GET",
	           url: url,
	           data: {max : 10}, // serializes the form's elements.
	           success: function(data)
	           {
	        	   $("#center").html(data);
	        		console.log("se recibio en html"); // show response from the php script.
	           },
	           error : function(request, status, error) {
					alert("Error");
				},
				complete : function(data) {

				}
	         });
	}
	this.showLogin = function(){
		var url = "/restaurant/ajaxShowLogin"
		var params = "";
		var call = function(data){
			$("#center").html(data);
		};
		var jax = ajax(url,params,call);
	}
} 