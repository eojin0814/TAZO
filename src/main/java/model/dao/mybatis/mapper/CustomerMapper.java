package model.dao.mybatis.mapper;

import model.CustomerDTO;

public interface CustomerMapper {

	public int create(CustomerDTO customer); 
	 
	public int update(CustomerDTO customer);

	public CustomerDTO findUser(String userId);

	
}
