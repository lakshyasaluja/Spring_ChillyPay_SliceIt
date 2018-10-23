	
$(document).ready(function() {
	//function for validating login email form
	//function automatically call when form submit's
  $('#login-email-form').submit(function(e) {
    e.preventDefault();
    
    var email = $('#email').val();
    flag=true;
  //check for email field value
    if (email.length < 1) {
    	flag=false;
      $('#login-email-error').html('Please Enter Email Address  !!');
    }
    else
    {
      var regEx =/^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i; 
    	  

      var validEmail = regEx.test(email);
    //check for it is valid email or not
      if (!validEmail) {
    	  flag=false;
    	  $('#login-email-error').html('Please Enter a valid Email !!');
      }    //check for provided email value present in DB Or no
      else if (email!='lakshya.saluja@obolustech.com') {
    	  flag=false;
    	  $('#login-email-error').html('Please Enter Your Registered Email !!');
      }
    
    }
    
  //if flag=true means there is no error and submit the login email form
    if(flag==true)
   {
  	  $('#login-email-error').html("");//hiding error msg
  	document.getElementById("login-email-form").submit();//submiting form
    	
   }
    
    
  });
 
});
