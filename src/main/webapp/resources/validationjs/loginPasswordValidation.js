	
$(document).ready(function() {
	//function for validating login email form
	//function automatically call when form submit's
  $('#login-password-form').submit(function(e) {
    e.preventDefault();
    
    var password = $('#password').val();
    flag=true;
  //check for password field value
    if (password != '123456') {
    	flag=false;
      $('#login-password-error').html('Incorrect Password  !!');
    }
    
    //if flag=true means there is no error and submit the login password form
    if(flag==true)
   {
  	  $('#login-password-error').html("");//removing error msg if any
  	document.getElementById("login-password-form").submit();//submittting form
    	
   }
    
    
  });
 
});


