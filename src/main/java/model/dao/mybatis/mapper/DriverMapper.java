package model.dao.mybatis.mapper;

import model.DriverDTO;

public interface DriverMapper {
	
	int create(DriverDTO drv); 
	 
	int update(DriverDTO drv);

	DriverDTO findDriver(String driverStrId);

}
