
var user = new User();

function User(){
	var user_flag = false;
	this.isLogin = function(){
		return user_flag;
	}
	this.setLogin = function(flag){
		user_flag = flag;
	}
}

function UserController(){
		
	this.login = function(){
		var url = "/Domi/user/authenticate"; // the script where you handle the form input.
		//var call = this.indexUser();
	    $.ajax({
	           type: "POST",
	           url: url,
	           data: $(".navbar-form").serialize(), // serializes the form's elements.
	           success: function(data)
	           {
	        	   if(data == "true"){
	        		   user.setLogin(true);
		        	   user_controller.indexUser();
	        	   }else{
	        		   alert("intentalo otra vez");
	        	   }
	        	   
	           },
	           error : function(request, status, error) {
					alert("Error");
				},
				complete : function(data) {

				}
	         });
	}
	
	
	this.indexUser = function(){

 		var url = "/user/ajaxLoadTemplate"; 
 		if(user.isLogin()){
 			var params1 = {templa : "menu-top-user"}
 	 		var call1 = function(data){
 	 			 $("#navbar-user").html(data);
 	 		}
 			var params2 = {templa : "menu-left-user"}
 	 		var call2 = function(data){
 	 			  $("#left").html(data);
 	       	   $("#center").addClass("center-on");
 	 		}
 			var jax1 = ajax(url, params1, call1);
 	 		var jax2 = ajax(url, params2, call2);
 		}		
 		var params3 = {templa : "index"}
 		var call3 = function(data){
       	   $("#center").html(data);
 		}
 		var jax3 = ajax(url, params3, call3);
	}
	
	function ajax(url, params, callback) {
		var jax = $.ajax({
			type : "GET",
			url : appContext + url,
			// dataType : 'json',
			data : params,
			success : function(data) {
				callback(data);
			},
			error : function(request, status, error) {
				alert("Error");
			},
			complete : function(data) {

			}
		});

		return jax;
	}
	
}
	
	
	