<%@page import="ecom.common.OfferedHot"%>
<%@page import="ecom.DAO.administration.AdminDAO"%>
<%@page import="java.util.List"%>
<%@page import="ecom.model.Product"%>
<%@page import="ecom.DAO.Buyer.BuyerSearchDAO"%>
<%@page import="java.util.Map"%>
<%@page import="ecom.common.FrequentUse"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
	<title> Firstrades </title>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />	
	<script type="text/javascript" src="<%=FrequentUse.jQuery %>"></script>
	<!-- Custom Theme files -->
	<link href="<%=FrequentUse.style %>" rel='stylesheet' type='text/css' />
	
	<!-- Custom Theme files -->
	<!--//theme-style-->
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="First Trades Online Shoppin" />
	
	<!-- start menu -->
	<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/megamenu.js"></script>
	<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
	<script src="js/menu_jquery.js"></script>
	<script src="js/simpleCart.min.js"> </script>
	  <script src="js/bootstrap.min.js"></script>
	  
	<style type="text/css">
		.login-form-input {
			width: 411px;
		    margin-bottom: 13px;
		    height: 45px;
		    font-size: 15px;
		    padding-left: 15px;
		    color: #333;
		    background: #fff;
		    border: 1px solid #c3c3c3; 
		}
		.fk-input {
		    font-size: 13px;
		    padding: 5px 6px;
		    border: 1px solid #ccc;
		    resize: none;
		    font-family: inherit;
		}
		.new-login-form {
		    width: 400px;
		} 
		
		.container2{
	width:800px;
	height:400px;
	padding:20px;
	border:1px solid gray;
	-webkit-box-sizing:border-box;
	-moz-box-sizing:border-box;
	box-sizing:border-box;
	background: black;	
}
.slider_wrapper{
	overflow: hidden;
	position:relative;
	height:auto;
	top:auto;
}
#image_slider{

	position: relative;
	height: auto;
	list-style: none;
	overflow: hidden;
	float: left;
	/*Chrom default padding for ul is 40px */
	padding:0px;
	margin:0px;
}
#image_slider li{
	
}
.nvgt{
	position:absolute;
	top: 40%;
	height: 50px;
	width: 30px;
	opacity: 0.6;
}
.nvgt:hover{
	opacity: 0.9;
}
#prev{
	background: #000 url('https://dl.dropboxusercontent.com/u/65639888/image/prev.png') no-repeat center;
	left: 0px;
}
#next{
	background: #000 url('https://dl.dropboxusercontent.com/u/65639888/image/next.png') no-repeat center;
	right: 0px;
}
		
		   
	</style>

</head>
<body>

<script type="text/javascript">
	//1. set ul width 
//2. image when click prev/next button
var ul;
var li_items;
var imageNumber;
var imageWidth;
var prev, next;
var currentPostion = 0;
var currentImage = 0;


function init(){
	ul = document.getElementById('image_slider');
	li_items = ul.children;
	imageNumber = li_items.length;
	imageWidth = li_items[0].children[0].clientWidth;
	
	prev = document.getElementById("prev");
	next = document.getElementById("next");
	//.onclike = slide(-1) will be fired when onload;
	/*
	prev.onclick = function(){slide(-1);};
	next.onclick = function(){slide(1);};*/
	prev.onclick = function(){ onClickPrev();};
	next.onclick = function(){ onClickNext();};
}

function animate(opts){
	var start = new Date;
	var id = setInterval(function(){
		var timePassed = new Date - start;
		var progress = timePassed / opts.duration;
		if (progress > 1){
			progress = 1;
		}
		var delta = opts.delta(progress);
		opts.step(delta);
		if (progress == 1){
			clearInterval(id);
			opts.callback();
		}
	}, opts.delay || 17);
	//return id;
}

function slideTo(imageToGo){
	var direction;
	var numOfImageToGo = Math.abs(imageToGo - currentImage);
	// slide toward left

	direction = currentImage > imageToGo ? 1 : -1;
	currentPostion = -1 * currentImage * imageWidth;
	var opts = {
		duration:1000,
		delta:function(p){return p;},
		step:function(delta){
			ul.style.left = parseInt(currentPostion + direction * delta * imageWidth * numOfImageToGo) + 'px';
		},
		callback:function(){currentImage = imageToGo;}	
	};
	animate(opts);
}

function onClickPrev(){
	if (currentImage == 0){
		slideTo(imageNumber - 1);
	} 		
	else{
		slideTo(currentImage - 1);
	}		
}

function onClickNext(){
	if (currentImage == imageNumber - 1){
		slideTo(0);
	}		
	else{
		slideTo(currentImage + 1);
	}		
}

window.onload = init;
	
	
	</script>


<%
	session.removeAttribute("user");
	session.invalidate();
	
	BuyerSearchDAO buyerSearchDAO = BuyerSearchDAO.getInstance();	
	Map<String,Product> map   = buyerSearchDAO.getFirstPageProducts();
	Product productBean       = null;
	
	AdminDAO adminDAO = AdminDAO.getInstance();
	List<Product> offeredProducts = adminDAO.getOfferedHot(OfferedHot.OFFERED);
	List<Product> hotProducts     = adminDAO.getOfferedHot(OfferedHot.HOT);
%>

<!-- Header -->
<%@ include file="jsp_Buyer/HeaderAllUser.jsp" %>
<!-- End Header -->


<!-- Navigation -->
<%@ include file="jsp_Buyer/Navigation.jsp" %>
<!-- End Navigation -->




<!-- ------------------------------------Banner----------------------------------------------------- -->

<div class="arriv">
	<div class="advertisment">
      
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- www.charge-it-up.com -->
<ins class="adsbygoogle"
     style="display:inline-block;width:200px;height:380px"
     data-ad-client="ca-pub-3038271016444605"
     data-ad-slot="9291379173"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
    
    </div>
    
	<div class="slider-area">
       	<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
               <li>
               <img src="images/banner.jpg">
               </li>
               <li>  <img src="images/banner2.jpg">  </li>
               <li> <img src="images/banner3.jpg"> </li>
				
			</ul>
		</div>
		<!-- ./Slider -->
    </div> <!-- End slider area -->
    
    <div class="advertisment2">
    
    <div class="surakasha">
 <a href="http://www.surakshaecommerce.com/" target="_blank">   <img src="images/add_link.png" style="width: 100%;">  Suraksha travel portal   </a>
    
    </div>
      
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- www.charge-it-up.com -->
<ins class="adsbygoogle"
     style="display:inline-block;width:200px;height:220px"
     data-ad-client="ca-pub-3038271016444605"
     data-ad-slot="9291379173"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
    
    </div>

    <div class="clearfix"></div>
        <div class="container">
        
        <div class="slider_wrapper">
				
			<div class="arriv-las">
			<ul id="image_slider">
			<li>
			<div>
				<img src="images/special-offer.png" style="position:relative;z-index:2;margin:auto;height:100px;margin-left: 0%;">
				<img src="images/special-offer.png" style="position:relative;z-index:2;margin:auto;height:100px;margin-left: 17%;">
				<img src="images/special-offer.png" style="position:relative;z-index:2;margin:auto;height:100px;margin-left: 13%;">
				
				<div class="col-md-4 arriv-left2">
					<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>">
						
						
						<img src="IconImageFromProduct?productId=<%=offeredProducts.get(0).getProductId() %>" class="img-responsive" alt="" style="height: 460px;width: 98%;position:relative;z-index:1"/>
						
						
					</a>
					<div class="special-info grid_1 simpleCart_shelfItem">
						<h5 style="height: 65px;"> 
							<a style="font-size: 23px;font-weight: bold;"  href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>"> <%=offeredProducts.get(0).getProductName() %>  (<%=offeredProducts.get(0).getCompanyName() %> )  </a> 
						</h5>
					
                    	
                    	<div class="item_add"><h6 style="height: 60px;"><span class="item_price"> <small class="over_flow"> Rs.<%=offeredProducts.get(0).getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=offeredProducts.get(0).getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=offeredProducts.get(0).getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
						<div class="item_add" style="height: 32px;">
							<span class="item_price">
								<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>">More Details</a>
							</span>
						</div>
					</div>
					
					
				</div>
				</div>
				
				
				<div class="col-md-4 arriv-left2">
					<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(1).getSubCategory() %>&productId=<%=offeredProducts.get(1).getProductId() %>">
						<img src="IconImageFromProduct?productId=<%=offeredProducts.get(1).getProductId() %>" class="img-responsive" alt="" style="height: 460px;width: 98%;"/>
					</a>
					<div class="special-info grid_1 simpleCart_shelfItem">
						<h5 style="height: 65px;"> 
							<a style="font-size: 23px;font-weight: bold;" href="CompleteProductDetails?subCategory=<%=offeredProducts.get(1).getSubCategory() %>&productId=<%=offeredProducts.get(1).getProductId() %>"> <%=offeredProducts.get(1).getProductName() %>  (<%=offeredProducts.get(1).getCompanyName() %> )  </a> 
						</h5>
					
                    	
                    	<div class="item_add"><h6 style="height: 60px;"><span class="item_price"> <small class="over_flow"> Rs.<%=offeredProducts.get(1).getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=offeredProducts.get(1).getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=offeredProducts.get(1).getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
						<div class="item_add" style="height: 32px;">
							<span class="item_price">
								<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(1).getSubCategory() %>&productId=<%=offeredProducts.get(1).getProductId() %>">More Details</a>
							</span>
						</div>
					</div>
				</div>
				
				
				<div class="col-md-4 arriv-left2">
					<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(2).getSubCategory() %>&productId=<%=offeredProducts.get(2).getProductId() %>">
						<img src="IconImageFromProduct?productId=<%=offeredProducts.get(2).getProductId() %>" class="img-responsive" alt="" style="height: 460px;width: 98%;"/>
					
					</a>
					<div class="special-info grid_1 simpleCart_shelfItem">
						<h5 style="height: 65px;"> 
							<a style="font-size: 20px;font-weight: bold;" href="CompleteProductDetails?subCategory=<%=offeredProducts.get(2).getSubCategory() %>&productId=<%=offeredProducts.get(2).getProductId() %>"> <%=offeredProducts.get(2).getProductName() %>  (<%=offeredProducts.get(2).getCompanyName() %> )  </a> 
						</h5>
					
                    	
                    	<div class="item_add"><h6 style="height: 60px;"><span class="item_price"> <small class="over_flow"> Rs.<%=offeredProducts.get(2).getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=offeredProducts.get(2).getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=offeredProducts.get(2).getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
						<div class="item_add" style="height: 32px;">
							<span class="item_price">
								<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(2).getSubCategory() %>&productId=<%=offeredProducts.get(2).getProductId() %>">More Details</a>
							</span>
						</div>
					</div>
				</div>
				</li>
				
				
				</ul>
            </div>
			<div class="clearfix"> </div>
			
			<span class="nvgt" id="prev"></span>
				<span class="nvgt" id="next"></span>
		</div>
		
		</div>
</div>

<!-- ------------------------------------End Banner--------------------------------------------- -->

<!-- ----------------------------------------------------BODY-------------------------------------------------------- -->



<div class="special">
	<div class="container">
	
		<h3><a href="#" style="color: #FF8F00;">ELECTRONICS</a></h3>
			<div class="specia-top">
				<ul class="grid_2">
					<% 
						productBean = map.get("Mobile");
					%>
					<li>
						<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
							<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
						</a>
						<div class="special-info grid_1 simpleCart_shelfItem">
							<h5> 
								<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
							</h5>
						
	                    	
	                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
							<div class="item_add">
								<span class="item_price">
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
								</span>
							</div>
						</div>
					</li>
					<% 
						productBean = map.get("Laptop");
					%>
					<li>
						<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
							<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
						</a>
						<div class="special-info grid_1 simpleCart_shelfItem">
							<h5> 
								<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
							</h5>
						
	                    	
	                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
							<div class="item_add">
								<span class="item_price">
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
								</span>
							</div>
						</div>
					</li>
					<% 
						productBean = map.get("Tablet");
					%>
					<li>
						<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
							<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
						</a>
						<div class="special-info grid_1 simpleCart_shelfItem">
							<h5> 
								<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
							</h5>
						
	                    	
	                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
							<div class="item_add">
								<span class="item_price">
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
								</span>
							</div>
						</div>
					</li>
					<% 
						productBean = map.get("Camera");
					%>
					<li>
						<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
							<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
						</a>
						<div class="special-info grid_1 simpleCart_shelfItem">
							<h5> 
								<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
							</h5>
						
	                    	
	                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
							<div class="item_add">
								<span class="item_price">
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
								</span>
							</div>
						</div>
					</li>
					<% 
						productBean = map.get("Television");
					%>
					<li>
						<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
							<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
						</a>
						<div class="special-info grid_1 simpleCart_shelfItem">
							<h5> 
								<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
							</h5>
						
	                    	
	                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
							<div class="item_add">
								<span class="item_price">
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
								</span>
							</div>
						</div>
					</li>
				</ul>
				<div class="clearfix"> </div>
			</div>
		
			<h3><a href="#" style="color: #FF8F00;">MEN</a> </h3>	
				<div class="specia-top">
					<ul class="grid_2">
						<% 
							productBean = map.get("MenTshirt");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("MenShirt");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("MenJeans");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("MenTrouser");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("MenShoes");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
					</ul>
					<div class="clearfix"> </div>
				</div>

			<h3><a href="#" style="color: #FF8F00;">WOMEN</a></h3>
				<div class="specia-top">
					<ul class="grid_2">
						<% 
							productBean = map.get("WomenShoe");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("WomenKurta");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("WomenSharee");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("WomenSalwar");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("WomenJeans");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>		
					</ul>
					<div class="clearfix"> </div>
				</div>		
		
			<h3><a href="#" style="color: #FF8F00;">HOME &amp; KITCHEN</a></h3>
				<div class="specia-top">
					<ul class="grid_2">
						<% 
							productBean = map.get("Bedsheets");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("Curtains");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("SofaCovers");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("PressureCookers");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("GasStoves");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>	
					</ul>
					<div class="clearfix"> </div>
				</div>	


			<h3><a href="#" style="color: #FF8F00;">BABY &amp; KIDS</a></h3>
				<div class="specia-top">
					<ul class="grid_2">
						<% 
							productBean = map.get("Baby_Diapers");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("Boys_Pant");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("Boys_Shirt");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("Girls_Top");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
						<% 
							productBean = map.get("Girls_Shorts");
						%>
						<li>
							<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">
								<img src="IconImageFromProduct?productId=<%=productBean.getProductId() %>" class="img-responsive" alt="">
							</a>
							<div class="special-info grid_1 simpleCart_shelfItem">
								<h5> 
									<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>"> <%=productBean.getProductName() %>  (<%=productBean.getCompanyName() %>)  </a> 
								</h5>
							
		                    	
		                    	<div class="item_add"><h6><span class="item_price"> <small class="over_flow"> Rs.<%=productBean.getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=productBean.getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=productBean.getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
								<div class="item_add">
									<span class="item_price">
										<a href="CompleteProductDetails?subCategory=<%=productBean.getSubCategory() %>&productId=<%=productBean.getProductId() %>">More Details</a>
									</span>
								</div>
							</div>
						</li>
					</ul>
					<div class="clearfix"> </div>
				</div>	
				
				
				

				<h3 style="margin-bottom: 15px;">Hot Categori</h3>
				<div>
				<img src="images/hot-offer.png" style="position:relative;z-index:2;margin:auto;height:100px;margin-left: -100%;"/>
				<img src="images/hot-offer.png" style="position:relative;z-index:2;margin:auto;height:100px;margin-left: 16%;"/>	
				<img src="images/hot-offer.png" style="position:relative;z-index:2;margin:auto;height:100px;margin-left: 16%;"/>	
				<img src="images/hot-offer.png" style="position:relative;z-index:2;margin:auto;height:100px;margin-left: 16%;"/>		
					<div class="col-md-3 arriv-left2">
					<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>">
						<img src="IconImageFromProduct?productId=<%=offeredProducts.get(0).getProductId() %>" class="img-responsive" alt="" style="height: 425px;width: 88%;">
					</a>
					<div class="special-info grid_1 simpleCart_shelfItem">
						<h5 style="height: 65px;"> 
							<a style="font-size: 23px;font-weight: bold;"  href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>"> <%=offeredProducts.get(0).getProductName() %>  (<%=offeredProducts.get(0).getCompanyName() %> )  </a> 
						</h5>
					
                    	
                    	<div class="item_add"><h6 style="height: 60px;"><span class="item_price"> <small class="over_flow"> Rs.<%=offeredProducts.get(0).getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=offeredProducts.get(0).getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=offeredProducts.get(0).getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
						<div class="item_add" style="height: 32px;">
							<span class="item_price">
								<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>">More Details</a>
							</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 arriv-left2">
					<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>">
						<img src="IconImageFromProduct?productId=<%=offeredProducts.get(0).getProductId() %>" class="img-responsive" alt="" style="height: 425px;width: 88%;">
					</a>
					<div class="special-info grid_1 simpleCart_shelfItem">
						<h5 style="height: 65px;"> 
							<a style="font-size: 23px;font-weight: bold;"  href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>"> <%=offeredProducts.get(0).getProductName() %>  (<%=offeredProducts.get(0).getCompanyName() %> )  </a> 
						</h5>
					
                    	
                    	<div class="item_add"><h6 style="height: 60px;"><span class="item_price"> <small class="over_flow"> Rs.<%=offeredProducts.get(0).getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=offeredProducts.get(0).getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=offeredProducts.get(0).getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
						<div class="item_add" style="height: 32px;">
							<span class="item_price">
								<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>">More Details</a>
							</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 arriv-left2">
					<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>">
						<img src="IconImageFromProduct?productId=<%=offeredProducts.get(0).getProductId() %>" class="img-responsive" alt="" style="height: 425px;width: 88%;">
					</a>
					<div class="special-info grid_1 simpleCart_shelfItem">
						<h5 style="height: 65px;"> 
							<a style="font-size: 23px;font-weight: bold;"  href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>"> <%=offeredProducts.get(0).getProductName() %>  (<%=offeredProducts.get(0).getCompanyName() %> )  </a> 
						</h5>
					
                    	
                    	<div class="item_add"><h6 style="height: 60px;"><span class="item_price"> <small class="over_flow"> Rs.<%=offeredProducts.get(0).getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=offeredProducts.get(0).getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=offeredProducts.get(0).getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
						<div class="item_add" style="height: 32px;">
							<span class="item_price">
								<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>">More Details</a>
							</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 arriv-left2">
					<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>">
						<img src="IconImageFromProduct?productId=<%=offeredProducts.get(0).getProductId() %>" class="img-responsive" alt="" style="height: 425px;width: 88%;">
					</a>
					<div class="special-info grid_1 simpleCart_shelfItem">
						<h5 style="height: 65px;"> 
							<a style="font-size: 23px;font-weight: bold;"  href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>"> <%=offeredProducts.get(0).getProductName() %>  (<%=offeredProducts.get(0).getCompanyName() %> )  </a> 
						</h5>
					
                    	
                    	<div class="item_add"><h6 style="height: 60px;"><span class="item_price"> <small class="over_flow"> Rs.<%=offeredProducts.get(0).getPrice().getListPrice() %> </small> &nbsp; <small class="item_price"> (<%=offeredProducts.get(0).getPrice().getDiscount() %>% Off) </small> <br> <strong class="main_value">Rs <%=offeredProducts.get(0).getPrice().getSalePriceCustomer() %></strong> </span></h6></div>
						<div class="item_add" style="height: 32px;">
							<span class="item_price">
								<a href="CompleteProductDetails?subCategory=<%=offeredProducts.get(0).getSubCategory() %>&productId=<%=offeredProducts.get(0).getProductId() %>">More Details</a>
							</span>
						</div>
					</div>
				</div>
				</div>
		
			<!-- <h3>Shop By Branded</h3>	 -->	
	</div>
</div>

<!-- ------------------------------------------End Body----------------------------------------------- -->

<!-- ------------------------------------------Administration----------------------------------------------- -->


<div class="container">  
	<!-- Modal -->
	<div class="modal fade" id="myModal">
    	<div class="modal-dialog">    
      		<!-- Modal content-->
      		<div class="modal-content">
        		<div class="modal-header">
          			<button type="button" class="close" data-dismiss="modal">&times;</button>
          			<h4 class="modal-title">ADMINISTRATION &nbsp;LOGIN</h4>
        		</div>
        		<!-- -------------------------------------------------------------- -->
        		<form action="Administration" method="post">
	        		<div class="modal-body">
	       				<div class="new-login-form">           
	            			<div class="login-input-wrap">
	                			<input type="text" name="userId" class="fk-input login-form-input user-email" autocomplete="on" placeholder="Enter email/mobile" value="admin">               
	            			</div>         
	            			<div class="tmargin10 login-input-wrap">
	                			<input type="password" name="password" class="fk-input login-form-input user-pwd" autocomplete="off" placeholder="Enter password" value="12345">           
	            			</div>
	            			<div class="tmargin20 login-btn-wrap">
	                			<input type="submit" class="btn btn-success" value="Login" style="padding: 6px 20px;text-transform: uppercase;background-color: #E2B757;
	    								border-color: #B18E3F;"> &nbsp;&nbsp;&nbsp;
	                			<a class="frgt-pswd fk-font-12 lpadding20" href="javascript:void(0)" style="font-size:10px;text-transform: uppercase;">forgot password?</a>
	            			</div>
	        			</div>
	        			<div class="modal-footer">
	          				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        			</div>
	      			</div>   
      			</form>  
      			<!-- -------------------------------------------------------------- --> 
    		</div>
  		</div>  
	</div>
</div>


<!-- ------------------------------------------End Administration----------------------------------------------- -->



<!-- -------------------------------------Footer------------------------------------------------------ -->
<%@ include file="jsp_Buyer/Footer.jsp" %>
<!-- -------------------------------------End Footer-------------------------------------------------- -->


	<script type="text/javascript" src="js/bxslider.min.js" ></script>
	<script type="text/javascript" src="js/script.slider.js"></script>
</body>


</html>