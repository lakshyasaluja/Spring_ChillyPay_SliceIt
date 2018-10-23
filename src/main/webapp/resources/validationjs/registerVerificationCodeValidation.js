	
$(document).ready(function() {

	//function for validating register-verification-code form
	//function automatically call when form submit's
  $('#verification-code-form').submit(function(e) {
    e.preventDefault();
    alert();
    var verificationCode = $('#verification-code').val();//fetching verification field value
    flag=true;
    //verifing verification code
    if (verificationCode.length < 1) {
    	flag=false;
      $('#verification-code-error').html('Please Enter Verification Code !!');
    }
    else
    {
    	if (verificationCode.length != 6) {
        	flag=false;
          $('#verification-code-error').html('Please Enter A Valid Verification Code');
        }	
    	
   	}
    
    //if flag=true means there is no error and submit the register-verification-code form
    if(flag==true)
   {
  	  $('#verification-code-error').html("");//hiding error msg
  	document.getElementById("verification-code-form").submit();//submiting form
    	
   }
    
    
  });
 
});
