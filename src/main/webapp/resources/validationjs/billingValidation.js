
function deleteCard(cardnumber)//function for deleting billing Card details.
{
	flag=confirm("ARE YOU SURE DO YOU WANT TO DELETE THIS CARD DETAILS");//taking confirmation 
	
	if(flag==true)//if true than delete billing card details
		{
		location.href="deleteBillingCard/"+cardnumber;//sending request for delete billing card details
		}
}



$(document).ready(function() {
 //function for validating add new card details form
//function automatically call when form submit's
  $('#add-card-form').submit(function(e) {
    e.preventDefault();
    //fetching fields value
    var firstname = $('#firstname').val();
    var lastname = $('#lastname').val();
    var cardnumber = $('#cardnumber').val();
    var cvv = $('#cvv').val();
    var expirydate = $('#expirydate').val();
    
    $('#error-box').css("display","block");//showing error msg box
    
    flag=true;
   //check for firstname field value
    if (firstname.length < 1) {
    	flag=false;
      $('#add-card-error').html('Please Enter FirstName  !!');
    }   //check for lastname field value
    else if(lastname.length < 1)
    {
    	flag=false;
        $('#add-card-error').html('Please Enter LastName  !!');
    	
    }   //check for cardnumber field value
    else if(cardnumber.length < 1 || cardnumber.length == 15)
   	{
   	   flag=false;
       $('#add-card-error').html('Please Enter A Valid CardNumber  !!');
   	}   //check for expirydate field value
    else if(expirydate.length < 1)
	{
		flag=false;
	    $('#add-card-error').html('Please Enter Expiry Date Of Card  !!');
	}   //check for cvv field value
    else if(cvv.length < 1 || cvv.length > 4 || isNaN(parseInt(cvv)))
	{
		flag=false;
	    $('#add-card-error').html('Please Enter A Valid CVV  !!');
	}
    
    
    //if flag=true means there is no error and submit the add new card form
    if(flag==true)
   {
    	$('#error-box').css("display","none");//hiding error box
  	  $('#add-card-error').html("");
  	  document.getElementById("add-card-form").submit();//submiting form
    	
   }
    
  });
 
});

