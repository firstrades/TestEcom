package ecom.DAO.Seller;

import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ecom.common.ConnectionFactory;
import ecom.model.Clothings;
import ecom.model.Product;
import ecom.model.Size;

public class EditProductDAO {

	public Product editProduct(Product productBean) {			
		
		Connection connection = null; CallableStatement callableStatement = null; ResultSet resultSet = null;		
		String sql = "{call editProduct(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";			
	
		try {
			
			connection = ConnectionFactory.getNewConnection();
			connection.setAutoCommit(false);
			
			callableStatement = connection.prepareCall(sql); 		
			
			callableStatement.setLong  (1,   productBean.getProductId());
			
			callableStatement.setString(2,   productBean.getCategory()   );
			callableStatement.setString(3,   productBean.getSubCategory());
			callableStatement.setString(4,   productBean.getCompanyName());
			callableStatement.setString(5,   productBean.getProductName());
			
			
			
			callableStatement.setDouble(10,  productBean.getPrice().getManufacturingCost()     );
			callableStatement.setDouble(11,  productBean.getPrice().getProfitMarginPercentage());
			callableStatement.setDouble(12,  productBean.getPrice().getSalePriceToAdmin()      );
			callableStatement.setDouble(13,  productBean.getPrice().getSalePriceCustomer()     );
			callableStatement.setDouble(14,  productBean.getPrice().getMarkup()                );
			callableStatement.setDouble(15,  productBean.getPrice().getListPrice()             );
			callableStatement.setDouble(16,  productBean.getPrice().getDiscount()              );			
			
			callableStatement.setInt   (17,  productBean.getStock()                  );
			callableStatement.setDouble(18,  productBean.getWeight()                 );
			callableStatement.setString(19,  productBean.getWarranty()               );
			callableStatement.setInt   (20,  productBean.getCancellationAfterBooked());			
			
			resultSet = callableStatement.executeQuery();
			
			while (resultSet.next()) {
				
				productBean.setProductId                 (resultSet.getInt   ("product_id")  );				
				
				productBean.setCategory                  (resultSet.getString("category"    ));
				productBean.setSubCategory               (resultSet.getString("sub_category"));
				productBean.setCompanyName               (resultSet.getString("company_name"));
				productBean.setProductName               (resultSet.getString("product_name"));
				
				
				
				productBean.getPrice().setManufacturingCost     (resultSet.getDouble("manufacturingCost"     ));
				productBean.getPrice().setProfitMarginPercentage(resultSet.getDouble("profitMarginPercentage"));
				productBean.getPrice().setSalePriceToAdmin      (resultSet.getDouble("sale_price"            ));
				productBean.getPrice().setSalePriceCustomer     (resultSet.getDouble("salePriceCustomer"     ));
				productBean.getPrice().setMarkup                (resultSet.getDouble("markup"                ));				
				productBean.getPrice().setListPrice             (resultSet.getDouble("list_price"            ));
				productBean.getPrice().setDiscount              (resultSet.getDouble("discount"              ));								
				
				productBean.setStock                     (resultSet.getInt   ("stock"                    ));
				productBean.setWeight                    (resultSet.getDouble("weight"                   ));
				productBean.setWarranty                  (resultSet.getString("warranty"                 ));
				productBean.setCancellationAfterBooked   (resultSet.getInt   ("calcellation_after_booked"));
			}
			
			
			connection.commit();					
			System.out.println("SQL - editProduct executed");
			
			return productBean;			
			
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			try { connection.rollback();     } catch (SQLException e1) { e1.printStackTrace(); }
			e.printStackTrace();
			
		} finally {
			try { resultSet.close();         } catch (SQLException e)  { e.printStackTrace();  }
			try { callableStatement.close(); } catch (SQLException e)  { e.printStackTrace();  }
			try { connection.close();        } catch (SQLException e)  { e.printStackTrace();  }
			System.gc();
			
		} 		
		
		return null;
	}// editProduct
	
	public Product getBasicFeatures(long productId) {		
		
		Connection connection = null; PreparedStatement preparedStatement = null; String sql = null; ResultSet resultSet = null;		
		Product productBean = new Product();		
		
		try {
			connection = ConnectionFactory.getNewConnection();
			connection.setAutoCommit(false);
			
			sql = "SELECT * FROM product WHERE product_id = ?";
				
			preparedStatement = connection.prepareStatement(sql);			
			preparedStatement.setLong (1,  productId);			
		
			resultSet = preparedStatement.executeQuery();	
			
			while (resultSet.next()) {
				
				productBean.setProductId                 (resultSet.getInt   ("product_id"));				
				
				productBean.setCategory                  (resultSet.getString("category"    ));
				productBean.setSubCategory               (resultSet.getString("sub_category"));
				productBean.setCompanyName               (resultSet.getString("company_name"));
				productBean.setProductName               (resultSet.getString("product_name"));
				
				
				
				productBean.getPrice().setManufacturingCost     (resultSet.getDouble("manufacturingCost"     ));
				productBean.getPrice().setProfitMarginPercentage(resultSet.getDouble("profitMarginPercentage"));
				productBean.getPrice().setSalePriceToAdmin      (resultSet.getDouble("sale_price"            ));
				productBean.getPrice().setSalePriceCustomer     (resultSet.getDouble("salePriceCustomer"     ));
				productBean.getPrice().setMarkup                (resultSet.getDouble("markup"                ));				
				productBean.getPrice().setListPrice             (resultSet.getDouble("list_price"            ));
				productBean.getPrice().setDiscount              (resultSet.getDouble("discount"              ));								
				
				productBean.setStock                     (resultSet.getInt   ("stock"                    ));
				productBean.setWeight                    (resultSet.getDouble("weight"                   ));
				productBean.setWarranty                  (resultSet.getString("warranty"                 ));
				productBean.setCancellationAfterBooked   (resultSet.getInt   ("calcellation_after_booked"));
				
				productBean.setSellerCompany             (resultSet.getString("seller_company"));
			}
			
			connection.commit();
			
			System.out.println("SQL getBasicFeatures Executed");
			
			return productBean;			
			
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e1) {
			try { connection.rollback();     } catch (SQLException e) { e.printStackTrace(); }
			e1.printStackTrace();
		} finally {
			productBean = null;
			try { preparedStatement.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { connection.close();        } catch (SQLException e) { e.printStackTrace(); }
			System.gc();
		}		
		
		return null;
	}

	public boolean editImage(long productId, long sellerId, InputStream inputStream, String image) {	
		
		Connection connection = null; PreparedStatement preparedStatement = null; String sql = null;		
		
		try {
			connection = ConnectionFactory.getNewConnection();
			connection.setAutoCommit(false);
			
			if (image.equals("iconImage")) {
				sql = "UPDATE product SET icon_image = ? WHERE id = ?";	
			} else if (image.equals("image1")) {
				sql = "UPDATE product SET image1 = ? WHERE id = ?";	
			} else if (image.equals("image2")) {
				sql = "UPDATE product SET image2 = ? WHERE id = ?";	
			}
			
			preparedStatement = connection.prepareStatement(sql);		
													
			preparedStatement.setBlob(1, inputStream);
			preparedStatement.setLong(2, productId);			
		
			preparedStatement.executeUpdate();
			
			
			connection.commit();
			
			return true;
			
			
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e1) {
			try { connection.rollback();     } catch (SQLException e) { e.printStackTrace(); }
			e1.printStackTrace();
		} finally {			
			try { preparedStatement.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { connection.close();        } catch (SQLException e) { e.printStackTrace(); }
			System.gc();
		}
		
		return false;
	}
	
	
		
	
	
	
}
