$(function() {	
	
	/*********** Basic Features ************/
	
	$('form#form1').submit(function(event) {
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Basic Product!");
		
		if (r == true) {  
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditBasicProduct',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	
				    	$("input[name=category]")   .val(array[0]);
				    	$("input[name=subCategory]").val(array[1]);
				    	$("input[name=company]")    .val(array[2]);
				    	$("input[name=product]")    .val(array[3]);
				    	
				    	$("input[name=kf1]")        .val(array[4]);
				    	$("input[name=kf2]")        .val(array[5]);
				    	$("input[name=kf3]")        .val(array[6]);
				    	$("input[name=kf4]")        .val(array[7]);
				    	
				    	$("input[name=manufacturingCost]")     .val(array[8]);
				    	$("input[name=profitMarginPercentage]").val(array[9]);
				    	$("input[name=salePriceToAdmin]")      .val(array[10]);
				    	$("input[name=salePriceToCustomer]")   .val(array[11]);
				    	$("input[name=markupPercentage]")      .val(array[12]);
				    	$("input[name=listPrice]")             .val(array[13]);
				    	$("input[name=discount]")              .val(array[14]);
				    	
				    	$("input[name=stock]")             .val(array[15]);
				    	$("input[name=weight]")            .val(array[16]);
				    	$("input[name=warranty]")          .val(array[17]);
				    	$("input[name=cancellationPeriod]").val(array[18]);
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Basic Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Basic Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/*********** Size ************/
	
	$('form#form4').submit(function(event) {  
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditSizeFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	
				    	$("input[name=size26]").val(array[0] );
				    	$("input[name=size28]").val(array[1] );
				    	$("input[name=size30]").val(array[2] );
				    	$("input[name=size32]").val(array[3] );
				    	$("input[name=size34]").val(array[4] );
				    	$("input[name=size36]").val(array[5] );
				    	$("input[name=size38]").val(array[6] );
				    	$("input[name=size40]").val(array[7] );
				    	$("input[name=size42]").val(array[8] );
				    	$("input[name=size44]").val(array[9] );
				    	$("input[name=size46]").val(array[10]);
				    	$("input[name=size48]").val(array[11]);
				    	
				    	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Size Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Size Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	
	/*********** Size Kids Years ************/
	
	$('form#form11').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditSizeKidsYearsFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	
				    	$("input[name=year_1_2]")  .val(array[0] );
				    	$("input[name=year_2_3]")  .val(array[1] );
				    	$("input[name=year_3_4]")  .val(array[2] );
				    	$("input[name=year_4_5]")  .val(array[3] );
				    	$("input[name=year_5_6]")  .val(array[4] );
				    	$("input[name=year_6_7]")  .val(array[5] );
				    	$("input[name=year_7_8]")  .val(array[6] );
				    	$("input[name=year_8_9]")  .val(array[7] );
				    	$("input[name=year_9_10]") .val(array[8] );
				    	$("input[name=year_10_11]").val(array[9] );
				    	$("input[name=year_11_12]").val(array[10]);				    	
				    	
				    	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Size Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Size Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/***************** Mobile *******************/
	
	$('form#form2').submit(function(event) {
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditMobileAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=internalStorage]").val(array[3]);
				    	$("input[name=os]")             .val(array[4]);
				    	$("input[name=touch]")          .val(array[6]);
				    	$("input[name=wifi]")           .val(array[7]);
				    	$("input[name=fm]")             .val(array[1]);
				    	$("input[name=frontCamera]")    .val(array[2]);
				    	$("input[name=rearCamera]")     .val(array[5]);
				    	$("input[name=connectivity]")   .val(array[0]);	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	
	/***************** Leggings *******************/
	
	$('form#form3').submit(function(event) {  
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditLeggingsAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=pattern]")  .val(array[0]);
				    	$("input[name=fabric]")   .val(array[1]);
				    	$("input[name=style]")    .val(array[2]);
				    	$("input[name=season]")   .val(array[3]);
				    	$("input[name=waistband]").val(array[4]);
				    	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	
	/***************** Top *******************/
	
	$('form#form5').submit(function(event) {  
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditTopAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=sleeve]")  .val(array[0]);
				    	$("input[name=fabric]")  .val(array[1]);
				    	$("input[name=neck]")    .val(array[2]);
				    	$("input[name=pattern]") .val(array[3]);
				    	$("input[name=occasion]").val(array[4]);
				    	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/***************** Laptop *******************/
	
	$('form#form6').submit(function(event) {  
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditLaptopAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=webCamera]")       .val(array[0]);
				    	$("input[name=powerSupply]")     .val(array[1]);
				    	$("input[name=batteryCell]")     .val(array[2]);
				    	$("input[name=screenSize]")      .val(array[3]);
				    	$("input[name=hddCapacity]")     .val(array[4]);
				    	$("input[name=graphicProcessor]").val(array[5]);
				    	$("input[name=os]")              .val(array[6]);
				    	$("input[name=processor]")       .val(array[7]);
				    	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	
	/***************** Men - T-Shirt *******************/
	
	$('form#form7').submit(function(event) {  
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditMenTshirtAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=sleeve]")  .val(array[0]);
				    	$("input[name=fabric]")  .val(array[1]);
				    	$("input[name=type]")    .val(array[2]);
				    	$("input[name=pattern]") .val(array[3]);
				    	$("input[name=fit]")     .val(array[4]);				    	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/***************** Men - Jeans *******************/
	
	$('form#form8').submit(function(event) {  
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditMenJeansAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=fabric]")   .val(array[0]);
				    	$("input[name=brandFit]") .val(array[1]);
				    	$("input[name=pattern]")  .val(array[2]);
				    	$("input[name=pockets]")  .val(array[3]);
				    	$("input[name=beltLoops]").val(array[4]);
				    	$("input[name=occasion]") .val(array[5]);
				    	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/*********************** Kids *********************/
	
	/***************** Boys - Shirt *******************/
	
	$('form#form10').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditBoys_ShirtAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=sleeve]") .val(array[0]);
				    	$("input[name=fabric]") .val(array[1]);
				    	$("input[name=type]")   .val(array[2]);
				    	$("input[name=fit]")    .val(array[3]);
				    	$("input[name=pattern]").val(array[4]);				    	
				    	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	
	
	
	
	/*********************** Electronics *********************/
	
	/***************** Tablet *******************/
	
	$('form#form9').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditTabletAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=inTheBox]") .val(array[0]);
				    	$("input[name=graphics]") .val(array[1]);
				    	$("input[name=processor]")   .val(array[2]);
				    	$("input[name=color]")    .val(array[3]);			    				    	
				    	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
/*********************** Electronics *********************/
	
	/***************** Television *******************/
	
	$('form#form12').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditTelevisionAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=displaySize]") .val(array[0]);
				    	$("input[name=screenType]") .val(array[1]);
				    	$("input[name=hdmi]")   .val(array[2]);
				    					    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/*********************** Electronics *********************/
	
	/***************** Air Condition *******************/
	
	$('form#form13').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditAirConditionAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=type]") .val(array[0]);
				    	$("input[name=capacity]") .val(array[1]);
				    	$("input[name=remoteControl]")   .val(array[2]);
				    	$("input[name=compressor]")    .val(array[3]);
				    	$("input[name=pattern]").val(array[4]);				    	
				    	
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/*********************** Electronics *********************/
	
	/***************** Refrigerator *******************/
	
	$('form#form14').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditRefrigeratorAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=capacity]") .val(array[0]);
				    	$("input[name=color]") .val(array[1]);
				    	$("input[name=numberOfDoor]")   .val(array[2]);
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/*********************** Electronics *********************/
	
	/***************** Washing Machine *******************/
	
	$('form#form15').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditWashingMachineAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=capacity]") .val(array[0]);
				    	$("input[name=inBuiltHeater]") .val(array[1]);
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/*********************** Electronics *********************/
	
	/***************** Microwave Oven *******************/
	
	$('form#form16').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditMicrowaveAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=type]") .val(array[0]);
				    	$("input[name=capacity]") .val(array[1]);
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/*********************** Electronics *********************/
	
	/***************** Camera *******************/
	
	$('form#form17').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditCameraAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=type]") .val(array[0]);
				    	$("input[name=color]") .val(array[1]);
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/*********************** Electronics *********************/
	
	/***************** Vacuum Cleaner *******************/
	
	$('form#form18').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditVacuumCleanerAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=consumption]") .val(array[0]);
				    	$("input[name=type]") .val(array[1]);
				    	$("input[name=blower]")   .val(array[2]);
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/*********************** Electronics *********************/
	
	/***************** Speaker *******************/
	
	$('form#form19').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditSpeakerAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=subWoofer]") .val(array[0]);
				    	$("input[name=powerOutput]") .val(array[1]);
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	/*********************** Electronics *********************/
	
	/***************** Geyser *******************/
	
	$('form#form20').submit(function(event) { 
		
		event.preventDefault();
		
		$('#msg1').empty();
		
		var r = confirm("Alert: Do You Really Want To Edit This Advanced Product!");
		
		if (r == true) { 
		
				var formData = new FormData($(this)[0]);
				
				$.ajax({
					url: 'EditGeyserAdvanceFeatures',
					type: 'POST',
					data: formData,
					async: false,
				    cache: false,
				    contentType: false,
				    processData: false,
				    dataType: 'json',
				    success: function (array) {
				    	$("input[name=mountType]") .val(array[0]);
				    	$("input[name=capacity]") .val(array[1]);
				    	
				    	$('#msg1').empty();
				    	$('#msg1').append('Advance Features Updated');
				    },
				    error: function() {
				  		$('#msg1').empty();
				  		$('#msg1').append('Advance Features Not Updated');
				  	}
				});
		
		} // if close
		
		
		return false;
	});
	
	
});