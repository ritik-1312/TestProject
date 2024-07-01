package com.springmvc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class MainDao {
private JdbcTemplate jdbctemplate;

public JdbcTemplate getJdbctemplate() {
	return jdbctemplate;
}

public void setJdbctemplate(JdbcTemplate jdbctemplate) {
	this.jdbctemplate = jdbctemplate;
}

public void save(RegModel rm) {
	// TODO Auto-generated method stub
	String sql= "insert into regmodel(id,name,password,email,gender,course,city) values(?,?,?,?,?,?,?)";
	jdbctemplate.update(sql,rm.getId(),rm.getName(),rm.getPassword(),rm.getEmail(),rm.getGender(),rm.getCourse(),rm.getCity());
}

public List<RegModel> login(LoginModel lm){
	String sql="select * from regmodel where email=? and password=?";
	return jdbctemplate.query(sql, new Object[]{lm.getEmail(),lm.getPassword()}, new RowMapper<RegModel>() {

		@Override
		public RegModel mapRow(ResultSet rs, int arg1) throws SQLException {
			RegModel rm= new RegModel();
			rm.setEmail(rs.getString("email"));
			rm.setEmail(rs.getString("password"));
			// TODO Auto-generated method stub
			return rm;
		}
		
	});
	
	
}
public void saveProduct(ProductModel pm) {
	// TODO Auto-generated method stub
	String sql= "insert into product(pid,name,category,cost,quantity,description) values(?,?,?,?,?,?)";
	jdbctemplate.update(sql,pm.getPid(),pm.getName(),pm.getCategory(),pm.getCost(),pm.getQuantity(),pm.getDescription());
}

public void savetest(TestModel tm) {
	// TODO Auto-generated method stub
	String sql= "insert into reg (id,name,email,password) values(?,?,?,?)";
	jdbctemplate.update(sql,tm.getId(),tm.getName(),tm.getEmail(),tm.getPassword());
}


public List<ProductModel> getProduct(){
	String sql="select * from product";
	return jdbctemplate.query(sql, new RowMapper<ProductModel>() {

		@Override
		public ProductModel mapRow(ResultSet rs, int arg1) throws SQLException {
			
			// TODO Auto-generated method stub
			ProductModel pr=new ProductModel();
			pr.setPid(rs.getInt(1));
			pr.setName(rs.getString(2));
			pr.setCost(rs.getInt(3));
			pr.setQuantity(rs.getInt(4));
			pr.setDescription(rs.getString(5));
			pr.setCategory(rs.getString(6));
			
			return pr;
		}
		
	});
	
	
}
//public ProductModel getProduct(int id){
//	String sql="select * from product where pid=?";
//	List<ProductModel> p= jdbctemplate.query(sql, new Object[] {id}, new RowMapper<ProductModel>() {
//
//		@Override
//		public ProductModel mapRow(ResultSet rs, int arg1) throws SQLException {
//			
//			// TODO Auto-generated method stub
//			ProductModel pr=new ProductModel();
//			pr.setPid(rs.getInt(1));
//			pr.setName(rs.getString(2));
//			pr.setCost(rs.getInt(3));
//			pr.setQuantity(rs.getInt(4));
//			pr.setDescription(rs.getString(5));
//			pr.setCategory(rs.getString(6));
//			return pr;
//		}
//		
//	});
//	if(!p.isEmpty()) {
//		return p.get(0);
//	}else {
//	return null;
//	}

//}
//public List<ProductModel> getProduct(int id){
//	String sql= "select * from product where pid =?";
//	return jdbctemplate.query(sql, new Object[] {id}, new RowMapper<ProductModel>() {
//
//		@Override
//		public ProductModel mapRow(ResultSet rs, int arg1) throws SQLException {
//			// TODO Auto-generated method stub
//			ProductModel pm=new ProductModel();
//			pm.setPid(rs.getInt("pid"));
//			pm.setName(rs.getString(2));
//		pm.setCost(rs.getInt(3));
//		pm.setQuantity(rs.getInt(4));
//		pm.setDescription(rs.getString(5));
//			pm.setCategory(rs.getString(6));
//			
//			return pm;
//			
//		}
//		
//	});
//	
//	
//	
//	
//	
//}
public ProductModel getProduct(int id) {
    String sql = "SELECT * FROM product WHERE pid = ?";
    return jdbctemplate.queryForObject(sql, new Object[] { id }, new RowMapper<ProductModel>() {
        @Override
        public ProductModel mapRow(ResultSet rs, int rowNum) throws SQLException {
            ProductModel pr = new ProductModel();
            pr.setPid(rs.getInt(1)); // Column index starts from 1
            pr.setName(rs.getString(2));
            pr.setCost(rs.getInt(3));
            pr.setQuantity(rs.getInt(4));
            pr.setDescription(rs.getString(5));
            pr.setCategory(rs.getString(6));
            return pr;
        }
    });
}

}
