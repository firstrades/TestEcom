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
import ecom.model.Product;

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

	@SuppressWarnings("unused")
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String servletPath = request.getServletPath();
		
		
		if (servletPath.equals("/EditBasicProduct")) {
			
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
			boolean status = editProductDAO.editImage(productId, sellerId, inputStream, "image2");
			
			/*********************************************
						* Next Page *
			*********************************************/
			
			//response.sendRedirect("MobileEdit");
		}
		
		
		
		
		
	}
}
