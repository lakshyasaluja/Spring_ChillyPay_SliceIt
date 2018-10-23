$(document).ready(function()
{
	$('#updateEmailBtn').click(function(){
		$('#userEmailBox').hide();
		$('#userNewEmailField').show();
		$('#userNewEmailField').focus();
		$('#userNewEmailField').keypress(function(e){
			var flag=false;
			if(e.keyCode==13)
			{
				var newEmail=$('#userNewEmailField').val();
				flag=validateEmail(newEmail);
				if(flag==true)
				{
					$('#email-error').html('');
					 $.ajax({
						 url:"updateUserEmail",
						 type:"POST",
						 data:{
							 	"email":newEmail
						},
					    success:function(data, status)
					    {
					    	$('#userNewEmailField').hide();
					    	$('#userEmailBox span:nth-child(1)').html(data);
					    	$('#userEmailBox').show();
					    	
					    },
					    error:function(data,status)
					    {
					    	$('#userNewEmailField').hide();
					    	$('#userEmailBox').show();
					    	alert("There Is Some error Plz Try After some Time!!!");
					    }
					    });
				}
				
			}
		});
		
	});
	
	
	$('#updateMobileBtn').click(function(){
		$('#userMobileBox').hide();
		$('#userNewMobileField').show();
		$('#userNewMobileField').focus();		
		$('#userNewMobileField').keypress(function(e){
			var flag=false;
			if(e.keyCode==13)
			{
				var newMobile=$('#userNewMobileField').val();				
				flag=validateMobile(newMobile);
				if(flag==true)
				{
					$('#mobile-error').html('');
					 $.ajax({
						 url:"updateUserMobile",
						 type:"POST",
						 data:{
							 "mobile":newMobile
						},
					    success:function(data, status)
					    {
					    	$('#userNewMobileField').hide();
					    	$('#userMobileBox span:nth-child(1)').html(data);
					    	$('#userMobileBox').show();	
					    },
					    error:function(data,status)
					    {
					    	$('#userNewMobileField').hide();
					    	$('#userMobileBox').show();
					    	alert("There Is Some error Plz Try After some Time!!!");
					    }});
				}
				
			}
		});
	});
	
	$("#changePasswordBtn").click(function(){
		$('#changePasswordBtn').hide();
		$('#currentPasswordField').show();
		$("#currentPasswordField").focus();
		$("#currentPasswordField").keypress(function(e){
			if(e.keyCode==13)
			{
				validateChangePasswordRequest($("#currentPasswordField").val());
			}
		});
	});
	
	
	$('#newPasswordField').keypress(function(e){
		
		if(e.keyCode==13)
		{
			newPassword=$("#newPasswordField").val();
			test=validateNewPassword(newPassword);
			if(test==true)
			{
				$.ajax({
					url:"updateUserPassword",
					 type:"POST",
					 data:{
						 "password":newPassword
					},
				    success:function(data, status)
				    {
				    	$("#newPasswordField").val("");
				    	$("#newPasswordField").hide();
				    	$('#changePasswordBtn').show();
				    	$('#new-password-error').html('');
				    },
				    error:function(data,status)
				    {
				    	
				    	alert("There Is Some error Plz Try After some Time!!!");
				    }
				});
			}
		}
	});

});


function validateNewPassword(newPassword)
{
	if (newPassword.length < 1) {
		
		$('#new-password-error').html('Please Enter Password !!');
		return false;
	}
	
	if(newPassword.length < 8){
		$('#new-password-error').html('Password is too short(minimum 8 character) !!');
		return false;
	}
		
return true;	
}
function validateChangePasswordRequest(currentPassword)
{

	if (currentPassword.length < 1) {
	
		$('#current-password-error').html('Please Enter Password !!');
	}else{
		$.ajax({
			 url:"validateCurrentPassword",
			 type:"POST",
			 data:{
				 "currentPassword":currentPassword
			},
		    success:function(data, status)
		    {	
		    	if(data==true)
		    	{	$("#currentPasswordField").val("");
					$('#current-password-error').html("");
		    		$("#currentPasswordField").hide();
		    		$("#newPasswordField").show();
		    		$("#newPasswordField").focus();
		    	}
		    	else
		    	{
		    		
		    		$('#current-password-error').html('Please Enter Correct Password !!');
		    		
		    	}
		    	
		    },
		    error:function(data,status)
		    {
		    	
		    	alert("There Is Some error Plz Try After some Time!!!");
		    }
		});
	}
	
}
function validateEmail(email)
{
	flag=true;
	 // check for email field value
    if (email.length < 1) {
    	flag=false;
      $('#email-error').html('Please Enter Email Address  !!');
    }
    else
    {
      var regEx =/^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i; 
    	  
    	  
      var validEmail = regEx.test(email);
    // check for it is valid email or not
      if (!validEmail) {
    	  flag=false;
    	  $('#email-error').html('Please Enter a valid Email !!');
      }
    }
    
    return flag;
}
function validateMobile(mobile)
{
	flag=true;
	
	//check for phoneNumber field value
    if (mobile.length < 1) {
    	flag=false;
      $('#mobile-error').html('Please Enter Phone Number !!');
    }
    else
    {
    	if (mobile.length < 10  || mobile.length > 12) {
        	flag=false;
          $('#mobile-error').html('Please Enter A Valid Phone Number (Current Digits : '+mobile.length+")");
        }	
    	
   	}
	
	return flag;
}
