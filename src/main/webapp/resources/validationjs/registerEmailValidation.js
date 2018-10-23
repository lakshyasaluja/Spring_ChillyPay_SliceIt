	
$(document).ready(function() {
	//function for validating register email form
	//function automatically call when form submit's
  $('#email-form').submit(function(e) {
    e.preventDefault();
    
    var email = $('#email').val();
    flag=true;
  //check for email field value
    if (email.length < 1) {
    	flag=false;
      $('#email-error').html('Please Enter Email Address  !!');
    }
    else
    {
      var regEx =/^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i; 
    	  
    	  
      var validEmail = regEx.test(email);
    //check for it is valid email or not
      if (!validEmail) {
    	  flag=false;
    	  $('#email-error').html('Please Enter a valid Email !!');
      }
    }
    
  //if flag=true means there is no error and submit the register email form
    if(flag==true)
   {
  	  $('#email-error').html("");//hiding error msg
  	document.getElementById("email-form").submit();//submiting form
    	
   }
    
    
  });
 
});

