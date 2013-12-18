
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
		var url = "/j_spring_security_check";
		  $.ajax({
	           type: "POST",
	           url: appContext + url,
	           data: $(".navbar-form").serialize(), // serializes the form's elements.
	           success: function(data)
	           {
	        	  user.setLogin(data.success);
	        	  user_controller.indexUser();
	        	  console.log(data);
	           },
	           error : function(request, status, error) {
					alert("Error");
				},
				complete : function(data) {

				}
	         });
	}
	
	this.logout = function(){
		var url = "/j_spring_security_logout";
		  $.ajax({
	           type: "POST",
	           url: appContext + url,
	          // data: $(".navbar-form").serialize(), // serializes the form's elements.
	           success: function(data)
	           {
	        	  user.setLogin(false);
	        	//  user_controller.indexUser();
	        	  console.log(data);
	           },
	           error : function(request, status, error) {
					alert("Error");
				},
				complete : function(data) {

				}
	         });
	}
	
	this.authAjax = function(){
		var url = "/j_spring_security_check";
		  $.ajax({
	           type: "POST",
	           url: appContext + url,
	           data: $(".form-signin").serialize(), // serializes the form's elements.
	           success: function(data)
	           {
	        	  user.setLogin(data.success);
	        	  user_controller.indexUser();
	        	  console.log(data);
	        	  
	              
	           },
	           error : function(request, status, error) {
					alert("Error");
				},
				complete : function(data) {

				}
	         });
		
	}
	
	this.showLogin= function(){
		var url = "/user/ajaxShowLogin";
		var params = ""
		var call = function(data){
 			 $("#center").html(data);
 		}
		var jax = ajax(url, params, call);
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
	
	this.showRegistro= function(){
		var url = "/user/ajaxLoadTemplate";
		var params = {templa : "create"}
		var call = function(data){
 			 $("#center").html(data);
 		}
		var jax = ajax(url, params, call);
	}
	
	this.create = function(){
		var url = "/user/save";
		  $.ajax({
	           type: "POST",
	           url: appContext + url,
	           data: $("#create-user").serialize(), // serializes the form's elements.
	           success: function(data)
	           {
	        	   $("#center").html(data);
	        	 // user_controller.indexUser();
	        	  console.log(data);
	           },
	           error : function(request, status, error) {
					alert("Error");
				},
				complete : function(data) {

				}
	         });
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
			    alert(request.status);
				if(request.status==302)
                   alert("fail");
                else
                	alert("fail2");
			},
			complete : function(data) {

			}
		});

		return jax;
	}
	
}
	
	
	