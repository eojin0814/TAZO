package controller.driver;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.CustomerDTO;
import model.DriverDTO;
import model.service.ExistingUserException;
import model.service.CustomerManager;
import model.service.DriverManager;

public class RegisterDriverController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
       
    	int num= (request.getParameter("gender")=="1") ? 1 : 2;
        DriverDTO driver = new DriverDTO(
        	 request.getParameter("name"),
        	 num,
        	 Integer.parseInt(request.getParameter("age")),
        	 Integer.parseInt(request.getParameter("job")),
        	 request.getParameter("phone"),
        	 request.getParameter("password"),
        	 Integer.parseInt(request.getParameter("driverId")),
             request.getParameter("driverStrId"),
             Integer.parseInt(request.getParameter("carNumber")),        
             Integer.parseInt(request.getParameter("license")),      
             request.getParameter("info"));
          
           try {
             DriverManager driverMan = DriverManager.getInstance();
             int i = driverMan.driverCreate(driver);
             if(i == 1) {
                System.out.println("성공");
                  return "/index.jsp";   
               }
               
          } catch (ExistingUserException e) {   // 예외 발생 시 회원가입 form으로 forwarding
//                request.setAttribute("registerFailed", true);
//             request.setAttribute("exception", e);
//             request.setAttribute("user", user);
             return "/customer/joinForm.jsp";
          } catch (SQLException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
          }
       return "/customer/joinForm.jsp";//실패
    }
}
