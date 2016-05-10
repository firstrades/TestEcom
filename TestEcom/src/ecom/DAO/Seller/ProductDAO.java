package ecom.DAO.Seller;

import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PacketTooBigException;

import ecom.model.KeyFeature;
import ecom.model.Price;
import ecom.model.Product;
import ecom.model.Size;
import ecom.model.User;
import ecom.common.ConnectionFactory;
import ecom.common.Conversions;

public class ProductDAO {
	
	
	//------------------------------ Product Creation -------------------------------------------//
	

	public static synchronized long addProduct(User user, InputStream inputStream1, InputStream inputStream2, InputStream inputStream3, 
			Product productBean) throws Exception {		
		
		Connection connection = null; CallableStatement callableStatement = null;	
		
		String sql = "{call addProduct(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";			
		long id = -1;
	
		try {
			
			connection = ConnectionFactory.getNewConnection();
			connection.setAutoCommit(false);
			
			callableStatement = connection.prepareCall(sql); 			
			
			callableStatement.registerOutParameter(1, java.sql.Types.INTEGER);
			
			callableStatement.setLong  (2, user.getUserInfo().getId()     );
			callableStatement.setString(3, user.getUserInfo().getCompany());   
			
			callableStatement.setBlob  (4,  inputStream1);
			callableStatement.setBlob  (5,  inputStream2);
			callableStatement.setBlob  (6,  inputStream3);
			
			callableStatement.setString(7,  productBean.getCategory());
			callableStatement.setString(8,  productBean.getSubCategory());
			callableStatement.setString(9,  productBean.getCompanyName());
			callableStatement.setString(10, productBean.getProductName());			
			
			callableStatement.setDouble(11, productBean.getPrice().getManufacturingCost()     );
			callableStatement.setDouble(12, productBean.getPrice().getProfitMarginPercentage());
			callableStatement.setDouble(13, productBean.getPrice().getSalePriceToAdmin()      );
			callableStatement.setDouble(14, productBean.getPrice().getListPrice()             );
			callableStatement.setDouble(15, productBean.getPrice().getDiscount()              );
			
			callableStatement.setInt   (16, productBean.getStock()                  );
			callableStatement.setDouble(17, productBean.getWeight()                 );
			callableStatement.setString(18, productBean.getWarranty()               );
			callableStatement.setInt   (19, productBean.getCancellationAfterBooked());
			
			callableStatement.execute();
			
			id = callableStatement.getInt(1);  
			
			connection.commit();					
			System.out.println("SQL - addProduct executed");
			
			return id;
			
			
		} catch (PacketTooBigException e) {
			throw e;
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			try { connection.rollback();     } catch (SQLException e1) { e1.printStackTrace(); }
			e.printStackTrace();
			throw e;
			
		} finally {
			
			try { callableStatement.close(); } catch (SQLException e)  { e.printStackTrace();  }
			try { connection.close();        } catch (SQLException e)  { e.printStackTrace();  }
			System.gc();
		}  
		
		//return id;
	} //addProduct
	
	
	
	
	
	
	public int addKeyFeatures(long productId, Product product) throws Exception {		
		
		Connection connection = null; PreparedStatement preparedStatement = null;
		
		String sql = "INSERT INTO key_features (product_id, header, value) VALUES(?, ?, ?)";		
		List<KeyFeature> keyFeatures = product.getKeyFeatures();
	
		try {
			
			connection = ConnectionFactory.getNewConnection();
			connection.setAutoCommit(false);
			
			preparedStatement = connection.prepareStatement(sql);				
			
			for (KeyFeature keyFeature : keyFeatures) {						
				preparedStatement.setLong  (1, productId);
				preparedStatement.setString(2, keyFeature.getKey()  );  
				preparedStatement.setString(3, keyFeature.getValue());  
				preparedStatement.addBatch();
			}
			
			int[] count = preparedStatement.executeBatch();  System.out.println("Length: " + count.length);
			
			connection.commit();					
			System.out.println("SQL - addKeyFeatures executed");
			
			return count.length;		
			
		
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			try { connection.rollback();     } catch (SQLException e1) { e1.printStackTrace(); }
			e.printStackTrace();
			throw e;
			
		} finally {
			
			try { preparedStatement.close(); } catch (SQLException e)  { e.printStackTrace();  }
			try { connection.close();        } catch (SQLException e)  { e.printStackTrace();  }
			System.gc();
		}  
		
		//return 0;
	} //addKeyFeatures
	
	
	
	
	
	public int addSizes(long productId, Product product) throws Exception {		
		
		Connection connection = null; PreparedStatement preparedStatement = null;
		
		String sql = "INSERT INTO size (product_id, size, count) VALUES(?, ?, ?)";		
		List<Size> sizes = product.getSizes();
	
		try {
			
			connection = ConnectionFactory.getNewConnection();
			connection.setAutoCommit(false);
			
			preparedStatement = connection.prepareStatement(sql);				
			
			for (Size size : sizes) {						
				preparedStatement.setLong  (1, productId);
				preparedStatement.setString(2, size.getSize() );  
				preparedStatement.setInt   (3, size.getCount());  
				preparedStatement.addBatch();
			}
			
			int[] count = preparedStatement.executeBatch();  System.out.println("Length: " + count.length);
			
			connection.commit();					
			System.out.println("SQL - addSizes executed");
			
			return count.length;		
			
		
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			try { connection.rollback();     } catch (SQLException e1) { e1.printStackTrace(); }
			e.printStackTrace();
			throw e;
			
		} finally {
			
			try { preparedStatement.close(); } catch (SQLException e)  { e.printStackTrace();  }
			try { connection.close();        } catch (SQLException e)  { e.printStackTrace();  }
			System.gc();
		}  
		
		//return 0;
	} //addSizes
	
	
	
	public int deleteProduct(long productId) {
		
		Connection connection = null; Statement statement = null;		
		String sql = null;			
	
		try {
			
			connection = ConnectionFactory.getNewConnection();
			connection.setAutoCommit(false);
			
			statement = connection.createStatement();	
			
			sql = "DELETE FROM product where id = " + productId;
			
			statement.addBatch(sql);			
						
			int[] count = statement.executeBatch();  System.out.println("Length: " + count.length);
			
			connection.commit();					
			System.out.println("SQL - deleteProduct executed");
			
			return count.length;		
			
		
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			try { connection.rollback();     } catch (SQLException e1) { e1.printStackTrace(); }
			e.printStackTrace();			
			
		} finally {
			
			try { statement.close();  } catch (SQLException e)  { e.printStackTrace();  }
			try { connection.close(); } catch (SQLException e)  { e.printStackTrace();  }
			System.gc();
		}  
		
		return 0;
	}// deleteProduct
	
	
	
	public int deleteKeyFeatures(long productId) {
		
		Connection connection = null; Statement statement = null;
		String sql = null;			
	
		try {
			
			connection = ConnectionFactory.getNewConnection();
			connection.setAutoCommit(false);
			
			statement = connection.createStatement();	
			
			sql = "DELETE FROM product where id = " + productId;			
			statement.addBatch(sql);	
			
			sql = "DELETE FROM key_features where product_id = " + productId;			
			statement.addBatch(sql);
						
			int[] count = statement.executeBatch();  System.out.println("Length: " + count.length);
			
			connection.commit();					
			System.out.println("SQL - deleteKeyFeatures executed");
			
			return count.length;		
			
		
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			try { connection.rollback();     } catch (SQLException e1) { e1.printStackTrace(); }
			e.printStackTrace();			
			
		} finally {
			
			try { statement.close();  } catch (SQLException e)  { e.printStackTrace();  }
			try { connection.close(); } catch (SQLException e)  { e.printStackTrace();  }
			System.gc();
		}  
		
		return 0;
	}// deleteKeyFeatures
	
	//------------------------------ End Product Creation -------------------------------------------//
	
	
	
	
	
	
	public List<Product> getProducts(String category, String subCategory, User user) {		
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String sql = null;
		ResultSet resultSet = null;		
		List<Product> list = new ArrayList<>();		
		
		try {
			connection = ConnectionFactory.getNewConnection();
			connection.setAutoCommit(false);
			
			sql = "SELECT * FROM product WHERE seller_id = ? AND category = ? AND sub_category = ? AND status = 'approved'";
				
			preparedStatement = connection.prepareStatement(sql);			
			preparedStatement.setLong   (1, user.getUserInfo().getId());
			preparedStatement.setString (2, category);
			preparedStatement.setString (3, subCategory);
		
			resultSet = preparedStatement.executeQuery();	
			
			while (resultSet.next()) { 
				
				Product productBean = new Product();				
				productBean.setPrice(new Price());
				
				productBean.setProductId                 (resultSet.getInt   ("id"          ));
				productBean.setSellerId                  (resultSet.getLong  ("seller_id"   ));
				
				productBean.setCategory                  (resultSet.getString("category"    ));
				productBean.setSubCategory               (resultSet.getString("sub_category"));
				productBean.setProductName               (resultSet.getString("product_name"));
				productBean.setCompanyName               (resultSet.getString("company_name"));
				
				productBean.getPrice().setListPrice      (resultSet.getDouble("list_price"  ));
				productBean.getPrice().setDiscount       (resultSet.getDouble("discount"    ));
				productBean.getPrice().setSalePriceToAdmin(resultSet.getDouble("sale_price" ));
				productBean.getPrice().setMarkup         (resultSet.getDouble("markup"      ));			
				
				productBean.setStatus                    (Conversions.getEnumStatus(resultSet.getString("status")));
				
				
				list.add(productBean);
			}
			
			connection.commit();
			
			System.out.println("SQL getProducts Executed");
			
			return list;
			
			
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {				
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			list = null;
			try {
				preparedStatement.close();
			} catch (SQLException e) {			
				e.printStackTrace();
			}
			try {
				connection.close();
			} catch (SQLException e) {			
				e.printStackTrace();
			}
			System.gc();
		}		
		
		
		return null;
	}
	
	public boolean deleteProduct(long productId, String subCategory) {		
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String sql = null;
		
		
		try {
			connection = ConnectionFactory.getNewConnection();
			//connection.setAutoCommit(false);   
			
			sql = "DELETE FROM product WHERE product_id = ?";	
			preparedStatement = connection.prepareStatement(sql);	
			preparedStatement.setLong(1, productId);
			preparedStatement.executeUpdate();
			preparedStatement.close();
			
			/********************************************
			 				* Condition *
			 ********************************************/
			
			if (subCategory.equals("Mobile")) {  // if there is no data, autocommit is restricting from deleteing the rows from from both table
				
				sql = "DELETE FROM mobile_spec WHERE product_id = ?";						
			}
			
			/****************************************/
			
			preparedStatement = connection.prepareStatement(sql);	
			preparedStatement.setLong(1, productId);
			preparedStatement.executeUpdate();  
			
			System.out.println("Delete Product SQL Executed...");
			
			//connection.commit();
			
			return true;
			
			
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			/*try {
				connection.rollback();
			} catch (SQLException e1) {				
				e1.printStackTrace();
			}*/
			e.printStackTrace();
		} finally {
			try {
				preparedStatement.close();
			} catch (SQLException e) {			
				e.printStackTrace();
			}
			try {
				connection.close();
			} catch (SQLException e) {			
				e.printStackTrace();
			}
			System.gc();
		}
		
		
		
		return false;
	}
	
}
