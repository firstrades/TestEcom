<%@page import="java.util.Map"%>
<%@page import="ecom.DAO.Buyer.BuyerSearchDAO"%>
<%@page import="ecom.model.User"%>
<%@page import="ecom.beans.CartAttributesBean"%>
<%@page import="ecom.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="ecom.common.FrequentUse"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
	<title> Customer Page </title>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />	
	<script type="text/javascript" src="<%=FrequentUse.jQuery %>"></script>
	<!-- Custom Theme files -->
	<link href="<%=FrequentUse.style %>" rel='stylesheet' type='text/css' />
	
	<!-- Custom Theme files -->
	<!--//theme-style-->
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="First Trades Online Shoppin" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- start menu -->
	<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/megamenu.js"></script>
	<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
	<script src="js/menu_jquery.js"></script>
	<script src="js/simpleCart.min.js"> </script>



</head>
<body>

<%
	User user = (User) session.getAttribute("user");	

	BuyerSearchDAO buyerSearchDAO = BuyerSearchDAO.getInstance();	
	Map<String,Product> map   = buyerSearchDAO.getFirstPageProducts();
	Product productBean       = null;
%>


<!-- Header -->
<%@ include file="Header.jsp" %>
<!-- End Header -->


<!-- Navigation -->
<%@ include file="Navigation.jsp" %>
<!-- End Navigation -->





<!-- ------------------------------------Banner----------------------------------------------------- -->

<div class="arriv">
	<div class="advertisment">
      
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- www.charge-it-up.com -->
<ins class="adsbygoogle"
     style="display:inline-block;width:300px;height:400px"
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
     style="display:inline-block;width:200px;height:400px"
     data-ad-client="ca-pub-3038271016444605"
     data-ad-slot="9291379173"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
    
    </div>

    <div class="clearfix"></div>
        <div class="container">
			<div class="arriv-las">
				<div class="col-md-4 arriv-left2">
					<img src="images/5.jpg" class="img-responsive" alt="">
					<div class="arriv-info2">
						<h3><a href="#">Casual Glasses<i class="ars"></i></a></h3>
					</div>
				</div>
				<div class="col-md-4 arriv-middle">
					<img src="images/6.jpg" class="img-responsive" alt="">
					<div class="arriv-info3">
						<h3>FRESH LOOK T-SHIRT</h3>
						<div class="crt-btn">
							<a href="#">SHOP NOW</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 arriv-right2">
					<img src="images/7.jpg" class="img-responsive" alt="">
					<div class="arriv-info2">
						<h3><a href="#">Elegant Watches<i class="ars"></i></a></h3>
					</div>
				</div>
            </div>
			<div class="clearfix"> </div>
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
				
				
				

				<h3>Hot Categori</h3>	
					<div class="hot_categori" style="margin-top:10px;">
						<img src="images/hot_deal.jpg">
					</div>
		
			<!-- <h3>Shop By Branded</h3> -->		
	</div>
</div>



<!-- ------------------------------------------End Body----------------------------------------------- -->



<!-- -------------------------------------Footer------------------------------------------------------ -->
<%@ include file="Footer.jsp" %>
<!-- -------------------------------------End Footer-------------------------------------------------- -->


	<script type="text/javascript" src="js/bxslider.min.js"></script>
	<script type="text/javascript" src="js/script.slider.js"></script>
</body>
</html>