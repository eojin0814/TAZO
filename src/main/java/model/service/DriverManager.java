package model.service;

import java.sql.SQLException;
import java.util.List;

import model.CustomerDTO;
import model.DriverDTO;
import model.dao.DriverDAO;

public class DriverManager {
	private static DriverManager driverMan = new DriverManager();
	private DriverDAO driverDAO;

	private DriverManager() {
		try {
			driverDAO = new DriverDAO();
		} catch (Exception e) {
			e.printStackTrace();
		}			
	}
	
	public static DriverManager getInstance() {
		return driverMan;
	}
	
	public int driverCreate(DriverDTO driver) throws SQLException, ExistingUserException {
//      if (userDAO.existingUser(user.getUserId()) == true) {
//         throw new ExistingUserException(user.getUserId() + "는 존재하는 아이디입니다.");
//      }
      return driverDAO.create(driver);
   }
	
	public int update(DriverDTO driver) throws SQLException {
		return driverDAO.update(driver);
	}	

	public int remove(String driverId) throws SQLException {
		return driverDAO.remove(driverId);
	}

	 public DriverDTO findDriver(String id) throws SQLException, DriverNotFoundException  {
	      DriverDTO drv = driverDAO.findDriver(id);
	      if (drv == null) {
	         throw new DriverNotFoundException(id + "는 존재하지 않는 아이디입니다.");
	      }
	      return drv;
	   }

	 public boolean login(String driverStrId, String password)
	         throws SQLException, DriverNotFoundException, PasswordMismatchException {
	         DriverDTO drv = findDriver(driverStrId);

	         if (!drv.matchPassword(password)) {
	            throw new PasswordMismatchException("비밀번호가 일치하지 않습니다.");
	         }
	         return true;
	      }


	public DriverDAO getDriverDAO() {
		return this.driverDAO;
	}
}
