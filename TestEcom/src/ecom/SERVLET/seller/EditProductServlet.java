package ecom.SERVLET.seller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.json.JSONArray;
import org.json.JSONException;

import ecom.DAO.Seller.EditProductDAO;
import ecom.model.Clothings;
import ecom.model.Product;
import ecom.model.Size;
import ecom.model.product.features.AirCondition;
import ecom.model.product.features.Camera;
import ecom.model.product.features.Geyser;
import ecom.model.product.features.LeggingsFeatures;
import ecom.model.product.features.MicrowaveOven;
import ecom.model.product.features.MobileFeatures;
import ecom.model.product.features.Refrigerator;
import ecom.model.product.features.Speaker;
import ecom.model.product.features.Tablet;
import ecom.model.product.features.Television;
import ecom.model.product.features.VacuumCleaner;
import ecom.model.product.features.WashingMachine;
import ecom.model.product.features._KidsBoysShirt;
import ecom.model.product.features._LaptopFeatures;
import ecom.model.product.features._MenJeansFeatures;
import ecom.model.product.features._MenTshirtFeatures;
import ecom.model.product.features._TopFeatures;

@MultipartConfig
public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private EditProductDAO editProductDAO;
 
	@Override
	public void init() {
		editProductDAO = new EditProductDAO();
	}
	
	@Override
	public void destroy() { 
		System.gc();
		System.out.println("EditProductServlet Destroyed"); 
	};
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String servletPath = request.getServletPath();
		
		if (servletPath.equals("/MobileEdit")) {
			
			System.out.println("Entered MobileEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/*********************************************
				 				* Get Request *
				 *********************************************/
				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/*****************************************
				 			* Set Session *
				 *****************************************/
				
				session.setAttribute("productId", productId);
			} else {
				
				/*****************************************
				 			* Get Session *
				 *****************************************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/*********************************************
			 * Database - Get product table & mobile_spec table 
			 *********************************************/		
			Product productBean       = editProductDAO.getBasicFeatures(productId);
			MobileFeatures mobileFeatures = editProductDAO.getMobileFeatures(productId);
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean", productBean);
			request.setAttribute("mobileFeatures", mobileFeatures);
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/MobileEditPage.jsp").forward(request, response);
		}
		else if (servletPath.equals("/EditBasicProduct")) {
			
			System.out.println("Entered EditBasicProduct");
			
			/*********************************************
							* Get Request *
			*********************************************/
			
			Product productBean = new Product();
			
			productBean.setProductId                 (Long.parseLong(request.getParameter("productId")));				
			
			productBean.setCategory                  (request.getParameter("category"           ));
			productBean.setSubCategory               (request.getParameter("subCategory"        ));
			productBean.setCompanyName               (request.getParameter("companyOfTheProduct").trim());
			productBean.setProductName               (request.getParameter("productName"        ).trim());
			
			productBean.getKeyFeatures().setKf1      (request.getParameter("kf1").trim());
			productBean.getKeyFeatures().setKf2      (request.getParameter("kf2").trim());
			productBean.getKeyFeatures().setKf3      (request.getParameter("kf3").trim());
			productBean.getKeyFeatures().setKf4      (request.getParameter("kf4").trim());	
			
			productBean.getPrice().setManufacturingCost     (Double.parseDouble(request.getParameter("manufacturingCost").trim())     );
			productBean.getPrice().setProfitMarginPercentage(Double.parseDouble(request.getParameter("profitMarginPercentage").trim()));
			productBean.getPrice().setSalePriceToAdmin      (Double.parseDouble(request.getParameter("salePriceToAdmin").trim())      );
			productBean.getPrice().setSalePriceCustomer     (Double.parseDouble(request.getParameter("salePriceToCustomer").trim())   );
			productBean.getPrice().setMarkup                (Double.parseDouble(request.getParameter("markupPercentage").trim())      );				
			productBean.getPrice().setListPrice             (Double.parseDouble(request.getParameter("listPrice").trim())             );
			productBean.getPrice().setDiscount              (Double.parseDouble(request.getParameter("discount").trim())              );								
			
			productBean.setStock                     (Integer.parseInt(request.getParameter("stock").trim())             );
			productBean.setWeight                    (Double.parseDouble(request.getParameter("weight").trim())          );
			productBean.setWarranty                  (request.getParameter("warranty").trim()                            );
			productBean.setCancellationAfterBooked   (Integer.parseInt(request.getParameter("cancellationPeriod").trim()));
			
			
			/*******************************************************
			 	*  Database - Edit Product Table  *
			*******************************************************/		
			productBean = editProductDAO.editProduct(productBean);
			
			/*********************************************
						* JSON Response *
			*********************************************/
			
			JSONArray jsonArray = new JSONArray();
			
			try {
				
				jsonArray.put(productBean.getCategory());
				jsonArray.put(productBean.getSubCategory());
				jsonArray.put(productBean.getCompanyName());
				jsonArray.put(productBean.getProductName());
				jsonArray.put(productBean.getKeyFeatures().getKf1());
				jsonArray.put(productBean.getKeyFeatures().getKf2());
				jsonArray.put(productBean.getKeyFeatures().getKf3());
				jsonArray.put(productBean.getKeyFeatures().getKf4());			
				jsonArray.put(productBean.getPrice().getListPrice());
				jsonArray.put(productBean.getPrice().getDiscount());
				jsonArray.put(productBean.getPrice().getSalePriceCustomer());
				jsonArray.put(productBean.getStock());
				jsonArray.put(productBean.getWarranty());
				
			} catch (JSONException e) {				
				e.printStackTrace();
			}
			
			/*********************************************
							* Next Page *
			*********************************************/
			
			response.setContentType("application/json");
			response.getWriter().write(jsonArray.toString());
			
			//response.sendRedirect("MobileEdit");
		}
		else if (servletPath.equals("/EditIconImage")) {
			
			System.out.println("Entered EditIconImage");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");   
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long sellerId    = Long.parseLong(sellerId1);
			
			Part part               = request.getPart("iconImage");			
			InputStream inputStream = part.getInputStream();               
			
			/*******************************************************
			 	*  Database - Edit Product Table  *
			*******************************************************/			
			@SuppressWarnings("unused")
			boolean status = editProductDAO.editImage(productId, sellerId, inputStream, "iconImage");
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			//response.sendRedirect("MobileEdit");
		}
		else if (servletPath.equals("/EditImage1")) {
			
			System.out.println("Entered EditImage1");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");  
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long sellerId    = Long.parseLong(sellerId1);
			
			Part part               = request.getPart("image1");			
			InputStream inputStream = part.getInputStream();               
			
			/*******************************************************
			 	*  Database - Edit Product Table  *
			*******************************************************/		
			@SuppressWarnings("unused")
			boolean status = editProductDAO.editImage(productId, sellerId, inputStream, "image1");
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			//response.sendRedirect("MobileEdit");
		}
		else if (servletPath.equals("/EditImage2")) {
	
			System.out.println("Entered EditImage2");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");  
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long sellerId    = Long.parseLong(sellerId1);
			
			Part part               = request.getPart("image2");			
			InputStream inputStream = part.getInputStream();               
			
			/*******************************************************
			 	*  Database - Edit Product Table  *
			*******************************************************/			
			@SuppressWarnings("unused")
			boolean status = editProductDAO.editImage(productId, sellerId, inputStream, "image2");
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			//response.sendRedirect("MobileEdit");
		}
		
		else if (servletPath.equals("/EditMobileAdvanceFeatures")) {
			
			System.out.println("Entered EditMobileAdvanceFeatures");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");  
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long   sellerId  = Long.parseLong(sellerId1);
			
			String internalStorage = request.getParameter("internalStorage").trim();                  
			String os              = request.getParameter("os").trim(); 
			String touch           = request.getParameter("touch").trim(); 
			String wifi            = request.getParameter("wifi").trim();			
			String fm              = request.getParameter("fm").trim(); 
			String frontCamera     = request.getParameter("frontCamera").trim();
			String rearCamera      = request.getParameter("rearCamera").trim();
			String connectivity    = request.getParameter("connectivity").trim();			
			
			
			/*******************************************************
				*  Database - Edit Product Table  *
			*******************************************************/
			MobileFeatures mobileFeatures = editProductDAO.editMobileFeatures(productId, sellerId, internalStorage, os, touch, wifi, fm, frontCamera,
					rearCamera, connectivity);
			
			/*********************************************
						* JSON Response *
			*********************************************/
			
			JSONArray jsonArray = new JSONArray();
			
			jsonArray.put(mobileFeatures.getConnectivity());
			jsonArray.put(mobileFeatures.getFm());
			jsonArray.put(mobileFeatures.getFrontCamera());
			jsonArray.put(mobileFeatures.getInternalStorage());
			jsonArray.put(mobileFeatures.getOs());
			jsonArray.put(mobileFeatures.getRearCamera());
			jsonArray.put(mobileFeatures.getTouch());
			jsonArray.put(mobileFeatures.getWifi());
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			response.setContentType("application/json");
			response.getWriter().write(jsonArray.toString());
			
			//response.sendRedirect("MobileEdit");
		
		}
		
		else if (servletPath.equals("/LeggingsEdit")) {
			
			System.out.println("Entered LeggingsEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean           = editProductDAO.getBasicFeatures(productId);
			LeggingsFeatures leggingsFeatures = editProductDAO.getLeggingsFeatures(productId);
			Size size                         = editProductDAO.getSizes(productId);
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("leggingsFeatures", leggingsFeatures);
			request.setAttribute("size",             size            );
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Women/LeggingsEditPage.jsp").forward(request, response);
		}
		
		else if (servletPath.equals("/EditLeggingsAdvanceFeatures")) {
			
			System.out.println("Entered EditLeggingsAdvanceFeatures");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");  
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long   sellerId  = Long.parseLong(sellerId1);
			
			String pattern    = request.getParameter("pattern")  .trim();                  
			String fabric     = request.getParameter("fabric")   .trim(); 
			String style      = request.getParameter("style")    .trim(); 
			String season     = request.getParameter("season")   .trim();			
			String waistband  = request.getParameter("waistband").trim(); 
					
			
			
			/*******************************************************
				*  Database - Edit Product Table  *
			*******************************************************/
			LeggingsFeatures leggingsFeatures = editProductDAO.editLeggingsFeatures(productId, sellerId, pattern,
					fabric, style, season, waistband);
			
			/*********************************************
						* JSON Response *
			*********************************************/
			
			JSONArray jsonArray = new JSONArray();
			
			jsonArray.put(leggingsFeatures.getPattern()  );
			jsonArray.put(leggingsFeatures.getFabric()   );
			jsonArray.put(leggingsFeatures.getStyle()    );
			jsonArray.put(leggingsFeatures.getSeason()   );
			jsonArray.put(leggingsFeatures.getWaistband());			
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			response.setContentType("application/json");
			response.getWriter().write(jsonArray.toString());			
			
		
		} //EditLeggingsAdvanceFeatures
		
		/****************** Edit Size ******************/
		
		else if (servletPath.equals("/EditSizeFeatures")) {
			
			System.out.println("Entered EditSizeFeatures");
			
			/************ Get Request *****************/		
			
			 
			long productId = Long.parseLong(request.getParameter("productId"));		    System.out.println("productId: " + productId); 
			long sellerId  = Long.parseLong(request.getParameter("sellerId"));
			
			int size26  = Integer.parseInt(request.getParameter("size26").trim());      System.out.println("size26: " + size26);            
			int size28  = Integer.parseInt(request.getParameter("size28").trim()); 
			
			int size30  = Integer.parseInt(request.getParameter("size30").trim());                  
			int size32  = Integer.parseInt(request.getParameter("size32").trim()); 
			int size34  = Integer.parseInt(request.getParameter("size34").trim());                  
			int size36  = Integer.parseInt(request.getParameter("size36").trim()); 
			int size38  = Integer.parseInt(request.getParameter("size38").trim()); 
			
			int size40  = Integer.parseInt(request.getParameter("size40").trim()); 
			int size42  = Integer.parseInt(request.getParameter("size42").trim());                  
			int size44  = Integer.parseInt(request.getParameter("size44").trim()); 
			int size46  = Integer.parseInt(request.getParameter("size46").trim());                  
			int size48  = Integer.parseInt(request.getParameter("size48").trim()); 
					
			
			
			/*************  Database - Edit Product Table  *************/			
			Size size = editProductDAO.editSizes(productId, sellerId, size26, size28, size30, size32, size34, size36, size38,
					size40, size42, size44, size46, size48);
			
			
			/*************** JSON Response ***********/		
			
			JSONArray jsonArray = new JSONArray();
			
			jsonArray.put(size.getQtyOfSize26());
			jsonArray.put(size.getQtyOfSize28());
			jsonArray.put(size.getQtyOfSize30());
			jsonArray.put(size.getQtyOfSize32());
			jsonArray.put(size.getQtyOfSize34());
			jsonArray.put(size.getQtyOfSize36());
			jsonArray.put(size.getQtyOfSize38());
			jsonArray.put(size.getQtyOfSize40());
			jsonArray.put(size.getQtyOfSize42());
			jsonArray.put(size.getQtyOfSize44());
			jsonArray.put(size.getQtyOfSize46());
			jsonArray.put(size.getQtyOfSize48());
			
			
			String json = jsonArray.toString();
			
			/******** Clean Up ************/
			jsonArray = null;
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			response.setContentType("application/json");
			response.getWriter().write(json);			
			
		
		} //EditSizeFeatures	
		
		
		
		
		
		
		/****************** Edit Size Kids Years ******************/
		
		else if (servletPath.equals("/EditSizeKidsYearsFeatures")) {
			
			System.out.println("Entered EditSizeKidsYearsFeatures");
			
			/************ Get Request *****************/		
			
			Clothings sizeInfo = new Clothings();
			
			sizeInfo.setProductId(Long.parseLong(request.getParameter("productId")));
			sizeInfo.setSellerId (Long.parseLong(request.getParameter("sellerId")) );
			
			sizeInfo.setStockOfSIZE_1_2  (Integer.parseInt(request.getParameter("year_1_2")  .trim()));
			sizeInfo.setStockOfSIZE_2_3  (Integer.parseInt(request.getParameter("year_2_3")  .trim()));
			sizeInfo.setStockOfSIZE_3_4  (Integer.parseInt(request.getParameter("year_3_4")  .trim()));
			sizeInfo.setStockOfSIZE_4_5  (Integer.parseInt(request.getParameter("year_4_5")  .trim()));
			sizeInfo.setStockOfSIZE_5_6  (Integer.parseInt(request.getParameter("year_5_6")  .trim()));
			sizeInfo.setStockOfSIZE_6_7  (Integer.parseInt(request.getParameter("year_6_7")  .trim()));
			sizeInfo.setStockOfSIZE_7_8  (Integer.parseInt(request.getParameter("year_7_8")  .trim()));
			sizeInfo.setStockOfSIZE_8_9  (Integer.parseInt(request.getParameter("year_8_9")  .trim()));
			sizeInfo.setStockOfSIZE_9_10 (Integer.parseInt(request.getParameter("year_9_10") .trim()));
			sizeInfo.setStockOfSIZE_10_11(Integer.parseInt(request.getParameter("year_10_11").trim()));
			sizeInfo.setStockOfSIZE_11_12(Integer.parseInt(request.getParameter("year_11_12").trim()));				
			
			
			/*************  Database - Edit Product Table  *************/			
			sizeInfo = editProductDAO.editSizeKidsYear(sizeInfo);
			
			
			/*************** JSON Response ***********/		
			
			JSONArray jsonArray = new JSONArray();
			
			jsonArray.put(sizeInfo.getStockOfSIZE_1_2());
			jsonArray.put(sizeInfo.getStockOfSIZE_2_3());
			jsonArray.put(sizeInfo.getStockOfSIZE_3_4());
			jsonArray.put(sizeInfo.getStockOfSIZE_4_5());
			jsonArray.put(sizeInfo.getStockOfSIZE_5_6());
			jsonArray.put(sizeInfo.getStockOfSIZE_6_7());
			jsonArray.put(sizeInfo.getStockOfSIZE_7_8());
			jsonArray.put(sizeInfo.getStockOfSIZE_8_9());
			jsonArray.put(sizeInfo.getStockOfSIZE_9_10());
			jsonArray.put(sizeInfo.getStockOfSIZE_10_11());
			jsonArray.put(sizeInfo.getStockOfSIZE_11_12());		
			
			
			String json = jsonArray.toString();
			
			/******** Clean Up ************/
			sizeInfo = null; jsonArray = null;
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			response.setContentType("application/json");
			response.getWriter().write(json);			
			
		
		} //EditSizeKidsYearsFeatures
		
		
		
		
		
		
		
		
		
		/************ Laptop ************/
		
		else if (servletPath.equals("/LaptopEdit")) {
			
			System.out.println("Entered LaptopEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			_LaptopFeatures laptopFeatures = editProductDAO.getLaptopFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("laptopFeatures",   laptopFeatures);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/LaptopEditPage.jsp").forward(request, response);
		} //LaptopEdit
		
		else if (servletPath.equals("/EditLaptopAdvanceFeatures")) {
			
			System.out.println("Entered EditLaptopAdvanceFeatures");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");  
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long   sellerId  = Long.parseLong(sellerId1);
			
			String webCamera         = request.getParameter("webCamera")       .trim();                  
			String powerSupply       = request.getParameter("powerSupply")     .trim(); 
			String batteryCell       = request.getParameter("batteryCell")     .trim(); 
			String screenSize        = request.getParameter("screenSize")      .trim();			
			String hddCapacity       = request.getParameter("hddCapacity")     .trim(); 
			String graphicProcessor  = request.getParameter("graphicProcessor").trim();
			String os                = request.getParameter("os")              .trim();
			String processor         = request.getParameter("processor")       .trim();			
					
			
			
			/*******************************************************
				*  Database - Edit Product Table  *
			*******************************************************/
			_LaptopFeatures laptopFeatures = editProductDAO.editLaptopFeatures(productId, sellerId, webCamera,
					powerSupply, batteryCell, screenSize, hddCapacity, graphicProcessor, os, processor);
			
			/*********************************************
						* JSON Response *
			*********************************************/
			
			JSONArray jsonArray = new JSONArray();
			
			jsonArray.put(laptopFeatures.getId());
			jsonArray.put(laptopFeatures.getProductId()       );
			jsonArray.put(laptopFeatures.getSellerId()        );
			jsonArray.put(laptopFeatures.getWebCamera()       );
			jsonArray.put(laptopFeatures.getPowerSupply()     );
			jsonArray.put(laptopFeatures.getBatteryCell()     );					
			jsonArray.put(laptopFeatures.getScreenSize()      );
			jsonArray.put(laptopFeatures.getHddCapacity()     );
			jsonArray.put(laptopFeatures.getGraphicProcessor());
			jsonArray.put(laptopFeatures.getOs()              );
			jsonArray.put(laptopFeatures.getProcessor()       );  
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			response.setContentType("application/json");
			response.getWriter().write(jsonArray.toString());			
			
		
		} //EditLaptopAdvanceFeatures 		
		
		
		/************* Women - TOP ************/
		
		else if (servletPath.equals("/TopEdit")) {
			
			System.out.println("Entered TopEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean  = editProductDAO.getBasicFeatures(productId);
			_TopFeatures topFeatures = editProductDAO.getTopFeatures(productId);
			Size size                = editProductDAO.getSizes(productId);
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean", productBean);
			request.setAttribute("topFeatures", topFeatures);
			request.setAttribute("size",        size       );
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Women/TopEditPage.jsp").forward(request, response);
		} // TopEdit
		
		else if (servletPath.equals("/EditTopAdvanceFeatures")) {
			
			System.out.println("Entered EditTopAdvanceFeatures");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");  
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long   sellerId  = Long.parseLong(sellerId1);
			
			String sleeve    = request.getParameter("sleeve")  .trim();                  
			String fabric    = request.getParameter("fabric")  .trim(); 
			String neck      = request.getParameter("neck")    .trim(); 
			String pattern   = request.getParameter("pattern") .trim();			
			String occasion  = request.getParameter("occasion").trim(); 
					
			
			
			/*******************************************************
				*  Database - Edit Product Table  *
			*******************************************************/
			_TopFeatures topFeatures = editProductDAO.editTopFeatures(productId, sellerId, sleeve,
					fabric, neck, pattern, occasion);
			
			/*********************************************
						* JSON Response *
			*********************************************/
			
			JSONArray jsonArray = new JSONArray();
			
			jsonArray.put(topFeatures.getId        ());
			jsonArray.put(topFeatures.getProductId ());
			jsonArray.put(topFeatures.getSellerId  ());
			jsonArray.put(topFeatures.getSleeve    ());
			jsonArray.put(topFeatures.getFabric    ());
			jsonArray.put(topFeatures.getNeck      ());
			jsonArray.put(topFeatures.getPattern   ());
			jsonArray.put(topFeatures.getOccasion  ());
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			response.setContentType("application/json");
			response.getWriter().write(jsonArray.toString());			
			
		
		} //EditTopAdvanceFeatures
		
		
		
		
		
		
		
		
		
		
		
		
		/************* Men - T-Shirt ************/
		
		else if (servletPath.equals("/MenTshirtEdit")) {
			
			System.out.println("Entered MenTshirtEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product        productBean       = editProductDAO.getBasicFeatures(productId);
			_MenTshirtFeatures menTshirtFeatures = editProductDAO.getMenTshirtFeatures(productId);
			Size               size              = editProductDAO.getSizes(productId);
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean", productBean);
			request.setAttribute("menTshirtFeatures", menTshirtFeatures);
			request.setAttribute("size",        size       );
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Men/MenTshirtEditPage.jsp").forward(request, response);
		} // TopEdit
		
		else if (servletPath.equals("/EditMenTshirtAdvanceFeatures")) {
			
			System.out.println("Entered EditMenTshirtAdvanceFeatures");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");  
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long   sellerId  = Long.parseLong(sellerId1);
			
			String sleeve    = request.getParameter("sleeve")  .trim();                  
			String fabric    = request.getParameter("fabric")  .trim(); 
			String type      = request.getParameter("type")    .trim(); 
			String pattern   = request.getParameter("pattern") .trim();			
			String fit       = request.getParameter("fit")     .trim(); 
					
			
			
			/*******************************************************
				*  Database - Edit Product Table  *
			*******************************************************/
			_MenTshirtFeatures menTshirtFeatures = editProductDAO.editMenTshirtFeatures(productId, sellerId, sleeve,
					fabric, type, pattern, fit);
			
			/*********************************************
						* JSON Response *
			*********************************************/
			
			JSONArray jsonArray = new JSONArray();
			
			jsonArray.put(menTshirtFeatures.getId        ());
			jsonArray.put(menTshirtFeatures.getProductId ());
			jsonArray.put(menTshirtFeatures.getSellerId  ());
			
			jsonArray.put(menTshirtFeatures.getSleeve    ());
			jsonArray.put(menTshirtFeatures.getFabric    ());
			jsonArray.put(menTshirtFeatures.getType      ());
			jsonArray.put(menTshirtFeatures.getPattern   ());
			jsonArray.put(menTshirtFeatures.getFit       ());
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			response.setContentType("application/json");
			response.getWriter().write(jsonArray.toString());			
			
		
		} //EditMenTshirtAdvanceFeatures
		
		
		
		/************* Men - Jeans ************/
		else if (servletPath.equals("/MenJeansEdit")) {
			
			System.out.println("Entered MenJeansEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_men_jeans_spec table ***************/			
			Product productBean           = editProductDAO.getBasicFeatures(productId);
		   _MenJeansFeatures menJeansFeatures = editProductDAO.getMenJeansFeatures(productId);
			Size size                         = editProductDAO.getSizes(productId);
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("menJeansFeatures", menJeansFeatures);
			request.setAttribute("size",             size            );
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Men/MenJeansEditPage.jsp").forward(request, response);
		}
		
		else if (servletPath.equals("/EditMenJeansAdvanceFeatures")) {
			
			System.out.println("Entered EditLeggingsAdvanceFeatures");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");  
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long   sellerId  = Long.parseLong(sellerId1);
			
			String fabric     = request.getParameter("fabric"   ) .trim(); 
			String brandFit   = request.getParameter("brandFit" ) .trim();
			String pattern    = request.getParameter("pattern"  ) .trim();
			String pockets    = request.getParameter("pockets"  ) .trim(); 
			String beltLoops  = request.getParameter("beltLoops") .trim();			
			String occasion   = request.getParameter("occasion" ) .trim(); 
					
			
			
			/*******************************************************
				*  Database - Edit Product Table  *
			*******************************************************/
			_MenJeansFeatures menJeansFeatures = editProductDAO.editMenJeansFeatures (productId, sellerId, 
					                                            fabric, brandFit, pattern, pockets, beltLoops, occasion);
			
			/*********************************************
						* JSON Response *
			*********************************************/
			
			JSONArray jsonArray = new JSONArray();
			
			jsonArray.put(menJeansFeatures.getFabric()   );
			jsonArray.put(menJeansFeatures.getBrandFit() );
			jsonArray.put(menJeansFeatures.getPattern()  );
			jsonArray.put(menJeansFeatures.getPockets()  );
			jsonArray.put(menJeansFeatures.getBeltLoops());	
			jsonArray.put(menJeansFeatures.getOccasion() );
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			response.setContentType("application/json");
			response.getWriter().write(jsonArray.toString());			
			
		
		} //EditMenJeansAdvanceFeatures
		
		
		
		
		
		
		
		/************************** Kids *******************************/
		
		/************* Boys - Shirt ************/
		
		
		else if (servletPath.equals("/Boys_ShirtEdit")) {
			
			System.out.println("Entered Boys_ShirtEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_men_jeans_spec table ***************/			
			Product productBean      = editProductDAO.getBasicFeatures(productId);
		    _KidsBoysShirt kidsBoysShirt = editProductDAO.getKidsBoysShirt(productId);	
		    
		    
		    
		    int sizeStyle = kidsBoysShirt.getSizeStyle();    System.out.println("SizeStyle: " + sizeStyle);
		    Clothings sizeInfo = null;
		    if (sizeStyle == kidsBoysShirt.KIDS_YEAR_STYLE)
		    	sizeInfo = editProductDAO.getKidsYearSizes(kidsBoysShirt);    
		    
			
			/*****************************************
			 			* Set Request *
			 *****************************************/			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("kidsBoysShirt",    kidsBoysShirt   );		
			request.setAttribute("sizeInfo",         sizeInfo   );	
			
			/********** Clean Up **************/
			productBean = null; kidsBoysShirt = null;
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Kids/Boys/Boys_ShirtEditPage.jsp").forward(request, response);
			
		} //Boys_ShirtEdit
		
		else if (servletPath.equals("/EditBoys_ShirtAdvanceFeatures")) {
			
			System.out.println("Entered EditBoys_ShirtAdvanceFeatures");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");  
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long   sellerId  = Long.parseLong(sellerId1);			
			
			_KidsBoysShirt kidsBoysShirt = new _KidsBoysShirt();
			
			kidsBoysShirt.setProductId(productId);
			kidsBoysShirt.setSellerId(sellerId  );
			
			kidsBoysShirt.setSleeve (request.getParameter("sleeve") .trim());
			kidsBoysShirt.setFabric (request.getParameter("fabric") .trim());
			kidsBoysShirt.setType   (request.getParameter("type")   .trim());
			kidsBoysShirt.setFit    (request.getParameter("fit")    .trim());
			kidsBoysShirt.setPattern(request.getParameter("pattern").trim());				
			
			
			/*******************************************************
				*  Database - Edit Product Table  *
			*******************************************************/
			kidsBoysShirt = editProductDAO.editKidsBoysShirtFeatures(kidsBoysShirt);
			
			/*********************************************
						* JSON Response *
			*********************************************/
			
			JSONArray jsonArray = new JSONArray();
			
			jsonArray.put(kidsBoysShirt.getSleeve() );
			jsonArray.put(kidsBoysShirt.getFabric() );
			jsonArray.put(kidsBoysShirt.getType()   );
			jsonArray.put(kidsBoysShirt.getFit()    );
			jsonArray.put(kidsBoysShirt.getPattern());	
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			String json = jsonArray.toString();
			
			/********* Clean Up **********/
			kidsBoysShirt = null; jsonArray = null;
			
			response.setContentType("application/json");
			response.getWriter().write(json);			
			
		
		} //EditBoys_ShirtAdvanceFeatures
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/**************************** Electronics *********************************/
		
		/************ Tablet ************/
		
		else if (servletPath.equals("/TabletEdit")) {
			
			System.out.println("Entered TabletEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			Tablet tablet = editProductDAO.getTabletFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("tablet",   tablet);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/TabletEditPage.jsp").forward(request, response);
		} //TabletEdit
		
		/************ Camera ************/
		
		else if (servletPath.equals("/CameraEdit")) {
			
			System.out.println("Entered CameraEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			Camera camera = editProductDAO.getCameraFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("camera",   camera);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/CameraEditPage.jsp").forward(request, response);
		} //CameraEdit
		
		/************ Television ************/
		
		else if (servletPath.equals("/TelevisionEdit")) {
			
			System.out.println("Entered TelevisionEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			Television television = editProductDAO.getTelevisionFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("television",   television);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/TelevisionEditPage.jsp").forward(request, response);
		} //TelevisionEdit
		
		/************ AirConditionEdit ************/
		
		else if (servletPath.equals("/AirConditionEdit")) {
			
			System.out.println("Entered AirConditionEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			AirCondition airCondition = editProductDAO.getAirConditionFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("airCondition",   airCondition);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/AirConditionEditPage.jsp").forward(request, response);
		} //AirConditionEdit
		
		
		
		/************ RefrigeratorEdit ************/
		
		else if (servletPath.equals("/RefrigeratorEdit")) {
			
			System.out.println("Entered RefrigeratorEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			Refrigerator refrigerator = editProductDAO.getRefrigeratorFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("refrigerator",   refrigerator);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/RefrigeratorEditPage.jsp").forward(request, response);
		} //RefrigeratorEdit
		
		/************ WashingMachineEdit ************/
		
		else if (servletPath.equals("/WashingMachineEdit")) {
			
			System.out.println("Entered WashingMachineEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			WashingMachine washingMachine = editProductDAO.getWashingMachineFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("washingMachine",   washingMachine);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/WashingMachineEditPage.jsp").forward(request, response);
		} //WashingMachineEdit
		
		/************ MicrowaveOvenEdit ************/
		
		else if (servletPath.equals("/MicrowaveOvenEdit")) {
			
			System.out.println("Entered MicrowaveOvenEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			MicrowaveOven microwaveOven = editProductDAO.getMicrowaveOvenFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("microwaveOven",   microwaveOven);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/MicrowaveOvenEditPage.jsp").forward(request, response);
		} //MicrowaveOvenEdit
		
		/************ VacuumCleanerEdit ************/
		
		else if (servletPath.equals("/VacuumCleanerEdit")) {
			
			System.out.println("Entered VacuumCleanerEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			VacuumCleaner vacuumCleaner = editProductDAO.getVacuumCleanerFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("vacuumCleaner",   vacuumCleaner);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/VacuumCleanerEditPage.jsp").forward(request, response);
		} //VacuumCleanerEdit
		
		/************ SpeakerEdit ************/
		
		else if (servletPath.equals("/SpeakerEdit")) {
			
			System.out.println("Entered SpeakerEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			Speaker speaker = editProductDAO.getSpeakerFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("speaker",   speaker);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/SpeakerEditPage.jsp").forward(request, response);
		} //SpeakerEdit
		
		/************ GeyserEdit ************/
		
		else if (servletPath.equals("/GeyserEdit")) {
			
			System.out.println("Entered GeyserEdit");
			
			long productId = 0L;
			
			if(request.getParameter("productId") != null) {
			
				/************** Get Request *****************/				
				productId = Long.parseLong(request.getParameter("productId"));
				
				/************** Set Session *****************/				
				session.setAttribute("productId", productId);
				
			} else {
				
				/************** Get Session *****************/
				productId = (Long) session.getAttribute("productId");				
			}
			
			/********** Database - Get product table & p_leggings_spec table ***************/			
			Product productBean        = editProductDAO.getBasicFeatures(productId);
			Geyser geyser = editProductDAO.getGeyserFeatures(productId);
			
			
			/*****************************************
			 			* Set Request *
			 *****************************************/
			
			request.setAttribute("productBean",      productBean     );
			request.setAttribute("geyser",   geyser);
			
			
			/*********************************************
			 				* Next Page *
			 *********************************************/
			
			request.getRequestDispatcher("jsp_Seller_Product/Electronics/GeyserEditPage.jsp").forward(request, response);
		} //GeyserEdit
		

		
		
		
		
		
		
		/***********************  Electronics - Tablet **********************/
		
		else if (servletPath.equals("/EditTabletAdvanceFeatures")) {
			
			System.out.println("Entered EditTabletAdvanceFeatures");
			
			/*********************************************
						* Get Request *
			*********************************************/
			
			String productId1 = request.getParameter("productId");  
			long productId = Long.parseLong(productId1);
			
			String sellerId1 = request.getParameter("sellerId");
			long   sellerId  = Long.parseLong(sellerId1);
			
			String inTheBox         = request.getParameter("inTheBox")       .trim();                  
			String graphics       = request.getParameter("graphics")     .trim(); 
			String processor       = request.getParameter("processor")     .trim(); 
			String color        = request.getParameter("color")      .trim();			
					
					
			
			
			/*******************************************************
				*  Database - Edit Product Table  *
			*******************************************************/
			Tablet tablet = editProductDAO.editTabletFeatures(productId, sellerId, inTheBox,
					graphics, processor, color);
			
			/*********************************************
						* JSON Response *
			*********************************************/
			
			JSONArray jsonArray = new JSONArray();
			
			//jsonArray.put(tablet.getId());
			//jsonArray.put(tablet.getProductId()       );
			//jsonArray.put(tablet.getSellerId()        );
			
			jsonArray.put(tablet.getInTheBox()       );
			jsonArray.put(tablet.getGraphics()     );
			jsonArray.put(tablet.getProcessor()     );					
			jsonArray.put(tablet.getColor()      );
			 
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			response.setContentType("application/json");
			response.getWriter().write(jsonArray.toString());			
			
		
		} //EditTabletAdvanceFeatures 
		
		/***********************  Electronics - Television **********************/
		
		else if (servletPath.equals("/EditTelevisionAdvanceFeatures")) {
					
					System.out.println("Entered EditTelevisionAdvanceFeatures");
					
					/*********************************************
								* Get Request *
					*********************************************/
					
					String productId1 = request.getParameter("productId");  
					long productId = Long.parseLong(productId1);
					
					String sellerId1 = request.getParameter("sellerId");
					long   sellerId  = Long.parseLong(sellerId1);
					
					String displaySize         = request.getParameter("displaySize")       .trim();                  
					String screenType       = request.getParameter("screenType")     .trim(); 
					String hdmi       = request.getParameter("hdmi")     .trim(); 
								
							
					
					
					/*******************************************************
						*  Database - Edit Product Table  *
					*******************************************************/
					Television television = editProductDAO.editTelevisionFeatures(productId, sellerId, displaySize,
							screenType, hdmi);
					
					/*********************************************
								* JSON Response *
					*********************************************/
					
					JSONArray jsonArray = new JSONArray();
					
					//jsonArray.put(television.getId());
					//jsonArray.put(television.getProductId()       );
					//jsonArray.put(television.getSellerId()        );
					
					jsonArray.put(television.getDisplaySize()       );
					jsonArray.put(television.getScreenType()     );
					jsonArray.put(television.getHdmi()     );					
					 
					
					/*********************************************
								* Next Page *
					*********************************************/
					
					response.setContentType("application/json");
					response.getWriter().write(jsonArray.toString());			
					
				
				} //EditTelevisionAdvanceFeatures 
		
		/***********************  Electronics - Air Condition **********************/
		
		else if (servletPath.equals("/EditAirConditionAdvanceFeatures")) {
					
					System.out.println("Entered EditAirConditionAdvanceFeatures");
					
					/*********************************************
								* Get Request *
					*********************************************/
					
					String productId1 = request.getParameter("productId");  
					long productId = Long.parseLong(productId1);
					
					String sellerId1 = request.getParameter("sellerId");
					long   sellerId  = Long.parseLong(sellerId1);
					
					String type         = request.getParameter("type")       .trim();                  
					String capacity       = request.getParameter("capacity")     .trim(); 
					String remoteControl       = request.getParameter("remoteControl")     .trim(); 
					String compressor        = request.getParameter("compressor")      .trim();			
						
							
					
					
					/*******************************************************
						*  Database - Edit Product Table  *
					*******************************************************/
					AirCondition airCondition = editProductDAO.editAirConditionFeatures(productId, sellerId, type,
							capacity, remoteControl, compressor);
					
					/*********************************************
								* JSON Response *
					*********************************************/
					
					JSONArray jsonArray = new JSONArray();
					
					//jsonArray.put(airCondition.getId());
					//jsonArray.put(airCondition.getProductId()       );
					//jsonArray.put(airCondition.getSellerId()        );
					
					jsonArray.put(airCondition.getType()       );
					jsonArray.put(airCondition.getCapacity()     );
					jsonArray.put(airCondition.getRemoteControl()     );					
					jsonArray.put(airCondition.getCompressor()      );
					
					
					/*********************************************
								* Next Page *
					*********************************************/
					
					response.setContentType("application/json");
					response.getWriter().write(jsonArray.toString());			
					
				
				} //EditAirConditionAdvanceFeatures 
		
		/***********************  Electronics - Refrigerator **********************/
		
		else if (servletPath.equals("/EditRefrigeratorAdvanceFeatures")) {
					
					System.out.println("Entered EditRefrigeratorAdvanceFeatures");
					
					/*********************************************
								* Get Request *
					*********************************************/
					
					String productId1 = request.getParameter("productId");  
					long productId = Long.parseLong(productId1);
					
					String sellerId1 = request.getParameter("sellerId");
					long   sellerId  = Long.parseLong(sellerId1);
					
					String capacity         = request.getParameter("capacity")       .trim();                  
					String color       = request.getParameter("color")     .trim(); 
					String numberOfDoor       = request.getParameter("numberOfDoor")     .trim(); 
					
					
					/*******************************************************
						*  Database - Edit Product Table  *
					*******************************************************/
					Refrigerator refrigerator = editProductDAO.editRefrigeratorFeatures(productId, sellerId, capacity,
							color, numberOfDoor);
					
					/*********************************************
								* JSON Response *
					*********************************************/
					
					JSONArray jsonArray = new JSONArray();
					
					//jsonArray.put(refrigerator.getId());
					//jsonArray.put(refrigerator.getProductId()       );
					//jsonArray.put(refrigerator.getSellerId()        );
					
					jsonArray.put(refrigerator.getCapacity()      );
					jsonArray.put(refrigerator.getColor()     );
					jsonArray.put(refrigerator.getNumberOfDoor()     );					
					
					
					/*********************************************
								* Next Page *
					*********************************************/
					
					response.setContentType("application/json");
					response.getWriter().write(jsonArray.toString());			
					
				
				} //EditRefrigeratorAdvanceFeatures 
		
		/***********************  Electronics - Washing Machine **********************/
		
		else if (servletPath.equals("/EditWashingMachineAdvanceFeatures")) {
					
					System.out.println("Entered EditWashingMachineAdvanceFeatures");
					
					/*********************************************
								* Get Request *
					*********************************************/
					
					String productId1 = request.getParameter("productId");  
					long productId = Long.parseLong(productId1);
					
					String sellerId1 = request.getParameter("sellerId");
					long   sellerId  = Long.parseLong(sellerId1);
					
					String capacity         = request.getParameter("capacity")       .trim();                  
					String inBuiltHeater       = request.getParameter("inBuiltHeater")     .trim(); 
					
					
					/*******************************************************
						*  Database - Edit Product Table  *
					*******************************************************/
					WashingMachine washingMachine = editProductDAO.editWashingMachineFeatures(productId, sellerId, 
							capacity, inBuiltHeater);
					
					/*********************************************
								* JSON Response *
					*********************************************/
					
					JSONArray jsonArray = new JSONArray();
					
					//jsonArray.put(washingMachine.getId());
					//jsonArray.put(washingMachine.getProductId()       );
					//jsonArray.put(washingMachine.getSellerId()        );
					
					jsonArray.put(washingMachine.getCapacity()       );
					jsonArray.put(washingMachine.getInBuiltHeater()     );
					
					
					/*********************************************
								* Next Page *
					*********************************************/
					
					response.setContentType("application/json");
					response.getWriter().write(jsonArray.toString());			
					
				
				} //EditWashingMachineAdvanceFeatures 
		
		/***********************  Electronics - Microwave Oven **********************/
		
		else if (servletPath.equals("/EditMicrowaveAdvanceFeatures")) {
					
					System.out.println("Entered EditMicrowaveAdvanceFeatures");
					
					/*********************************************
								* Get Request *
					*********************************************/
					
					String productId1 = request.getParameter("productId");  
					long productId = Long.parseLong(productId1);
					
					String sellerId1 = request.getParameter("sellerId");
					long   sellerId  = Long.parseLong(sellerId1);
					
					String type         = request.getParameter("type")       .trim();                  
					String capacity       = request.getParameter("capacity")     .trim(); 
					
					
					/*******************************************************
						*  Database - Edit Product Table  *
					*******************************************************/
					MicrowaveOven microwaveOven = editProductDAO.editMicrowaveOvenFeatures(productId, sellerId, type,
							capacity);
					
					/*********************************************
								* JSON Response *
					*********************************************/
					
					JSONArray jsonArray = new JSONArray();
					
					//jsonArray.put(microwaveOven.getId());
					//jsonArray.put(microwaveOven.getProductId()       );
					//jsonArray.put(microwaveOven.getSellerId()        );
					
					jsonArray.put(microwaveOven.getType()       );
					jsonArray.put(microwaveOven.getCapacity()     );
					
					
					/*********************************************
								* Next Page *
					*********************************************/
					
					response.setContentType("application/json");
					response.getWriter().write(jsonArray.toString());			
					
				
				} //EditMicrowaveAdvanceFeatures 
		
		/***********************  Electronics - Camera **********************/
		
		else if (servletPath.equals("/EditCameraAdvanceFeatures")) {
					
					System.out.println("Entered EditCameraAdvanceFeatures");
					
					/*********************************************
								* Get Request *
					*********************************************/
					
					String productId1 = request.getParameter("productId");  
					long productId = Long.parseLong(productId1);
					
					String sellerId1 = request.getParameter("sellerId");
					long   sellerId  = Long.parseLong(sellerId1);
					
					String type         = request.getParameter("type")       .trim();                  
					String color       = request.getParameter("color")     .trim(); 
					
					
					/*******************************************************
						*  Database - Edit Product Table  *
					*******************************************************/
					Camera camera = editProductDAO.editCameraFeatures(productId, sellerId, type, color);
					
					/*********************************************
								* JSON Response *
					*********************************************/
					
					JSONArray jsonArray = new JSONArray();
					
					//jsonArray.put(camera.getId());
					//jsonArray.put(camera.getProductId()       );
					//jsonArray.put(camera.getSellerId()        );
					
					jsonArray.put(camera.getType()       );
					jsonArray.put(camera.getColor()     );
					 
					
					/*********************************************
								* Next Page *
					*********************************************/
					
					response.setContentType("application/json");
					response.getWriter().write(jsonArray.toString());			
					
				
				} //EditCameraAdvanceFeatures 
		
		/***********************  Electronics - Vacuum Cleaner **********************/
		
		else if (servletPath.equals("/EditVacuumCleanerAdvanceFeatures")) {
					
					System.out.println("Entered EditVacuumCleanerAdvanceFeatures");
					
					/*********************************************
								* Get Request *
					*********************************************/
					
					String productId1 = request.getParameter("productId");  
					long productId = Long.parseLong(productId1);
					
					String sellerId1 = request.getParameter("sellerId");
					long   sellerId  = Long.parseLong(sellerId1);
					
					String consumption         = request.getParameter("consumption")       .trim();                  
					String type       = request.getParameter("type")     .trim(); 
					String blower       = request.getParameter("blower")     .trim(); 
					
					
					/*******************************************************
						*  Database - Edit Product Table  *
					*******************************************************/
					VacuumCleaner vacuumCleaner = editProductDAO.editVacuumCleanerFeatures(productId, sellerId, consumption,
							type, blower);
					
					/*********************************************
								* JSON Response *
					*********************************************/
					
					JSONArray jsonArray = new JSONArray();
					
					//jsonArray.put(vacuumCleaner.getId());
					//jsonArray.put(vacuumCleaner.getProductId()       );
					//jsonArray.put(vacuumCleaner.getSellerId()        );
					
					jsonArray.put(vacuumCleaner.getConsumption()       );
					jsonArray.put(vacuumCleaner.getType()     );
					jsonArray.put(vacuumCleaner.getBlower()     );					
					 
					
					/*********************************************
								* Next Page *
					*********************************************/
					
					response.setContentType("application/json");
					response.getWriter().write(jsonArray.toString());			
					
				
				} //EditVacuumCleanerAdvanceFeatures 
		
		/***********************  Electronics - Speaker **********************/
		
		else if (servletPath.equals("/EditSpeakerAdvanceFeatures")) {
					
					System.out.println("Entered EditSpeakerAdvanceFeatures");
					
					/*********************************************
								* Get Request *
					*********************************************/
					
					String productId1 = request.getParameter("productId");  
					long productId = Long.parseLong(productId1);
					
					String sellerId1 = request.getParameter("sellerId");
					long   sellerId  = Long.parseLong(sellerId1);
					
					String subWoofer         = request.getParameter("subWoofer")       .trim();                  
					String powerOutput       = request.getParameter("powerOutput")     .trim(); 
					
					
					/*******************************************************
						*  Database - Edit Product Table  *
					*******************************************************/
					Speaker speaker = editProductDAO.editSpeakerFeatures(productId, sellerId, subWoofer, powerOutput);
					
					/*********************************************
								* JSON Response *
					*********************************************/
					
					JSONArray jsonArray = new JSONArray();
					
					//jsonArray.put(speaker.getId());
					//jsonArray.put(speaker.getProductId()       );
					//jsonArray.put(speaker.getSellerId()        );
					
					jsonArray.put(speaker.getSubWoofer()       );
					jsonArray.put(speaker.getPowerOutput()     );
					
					
					/*********************************************
								* Next Page *
					*********************************************/
					
					response.setContentType("application/json");
					response.getWriter().write(jsonArray.toString());			
					
				
				} //EditSpeakerAdvanceFeatures 
		
		/***********************  Electronics - Geyser **********************/
		
		else if (servletPath.equals("/EditGeyserAdvanceFeatures")) {
					
					System.out.println("Entered EditGeyserAdvanceFeatures");
					
					/*********************************************
								* Get Request *
					*********************************************/
					
					String productId1 = request.getParameter("productId");  
					long productId = Long.parseLong(productId1);
					
					String sellerId1 = request.getParameter("sellerId");
					long   sellerId  = Long.parseLong(sellerId1);
					
					String mountType         = request.getParameter("mountType")       .trim();                  
					String capacity       = request.getParameter("capacity")     .trim(); 
					
					/*******************************************************
						*  Database - Edit Product Table  *
					*******************************************************/
					Geyser geyser = editProductDAO.editGeyserFeatures(productId, sellerId, 
							mountType, capacity);
					
					/*********************************************
								* JSON Response *
					*********************************************/
					
					JSONArray jsonArray = new JSONArray();
					
					//jsonArray.put(geyser.getId());
					//jsonArray.put(geyser.getProductId()       );
					//jsonArray.put(geyser.getSellerId()        );
					
					jsonArray.put(geyser.getMountType()       );
					jsonArray.put(geyser.getCapacity()     );
					
					
					/*********************************************
								* Next Page *
					*********************************************/
					
					response.setContentType("application/json");
					response.getWriter().write(jsonArray.toString());			
					
				
				} //EditGeyserAdvanceFeatures 
		
	}
}
