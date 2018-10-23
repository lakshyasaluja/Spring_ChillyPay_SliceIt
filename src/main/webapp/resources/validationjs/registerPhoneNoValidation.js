	
$(document).ready(function() {
 
	//function for validating register phoneNo form
	//function automatically call when form submit's
  $('#phone-number-form').submit(function(e) {
    e.preventDefault();
    
    var phoneNumber = $('#phone-number').val();
    flag=true;
 
    //check for phoneNumber field value
 
    if (phoneNumber.length < 1) {
    	flag=false;
      $('#phone-number-error').html('Please Enter Phone Number !!');
    }
    else
    {
    	if (phoneNumber.length < 10  || phoneNumber.length > 12) {
        	flag=false;
          $('#phone-number-error').html('Please Enter A Valid Phone Number (Current Digits : '+phoneNumber.length+")");
        }	
    	
   	}
    
    //if flag=true means there is no error and submit the register phoneNo form
    if(flag==true)
   {
  	  $('#phone-number-error').html("");//hiding error msg
  	document.getElementById("phone-number-form").submit();//submiting form
    	
   }
    
    
  });
 
});

