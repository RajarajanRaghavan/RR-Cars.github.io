package com;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddCars")
public class AddCars  extends HttpServlet {

	@Override
	public void init() throws ServletException {
		super.init();
		if(Homepage.allCars == null){
			Homepage.allCars = new HashMap<String, HashMap<String, String>>();
		}
	}
	
	private static final long serialVersionUID = 1L;
	
    public AddCars() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String topSpeed=request.getParameter("TopSpeed");
	String autoTrans=request.getParameter("AutoTransmission");
	String fuelType=request.getParameter("FuelType");
	String price=request.getParameter("Price");
	String brand=request.getParameter("BrandName");
	String name=request.getParameter("CarName");
		AddingCarDetails add = new AddingCarDetails();
		add.addingDetailsToMap(topSpeed,autoTrans,fuelType,price,brand,name);
	request.getRequestDispatcher("Addcars.jsp").forward(request, response);
	}

	public class AddingCarDetails {
	void	addingDetailsToMap(String topSpeed, String autoTrans, String fuelType, String price, String brand,
			String name) {
		HashMap<String, String> carInfo1 = new HashMap<String, String>();
		carInfo1.put("TopSpeed", topSpeed);
		carInfo1.put("AutoTransmission", autoTrans);
		carInfo1.put("FuelType", fuelType);
		carInfo1.put("Price", price);
		carInfo1.put("Brand", brand);
		Homepage.allCars.put(name, carInfo1);
		System.out.println(Homepage.allCars);
	}
	}


}
