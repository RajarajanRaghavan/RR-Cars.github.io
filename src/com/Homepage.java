package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/Homepage")
public class Homepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static HashMap<String, HashMap<String, String>> allCars = null;
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		if(allCars==null){
			allCars = new HashMap<String, HashMap<String, String>>();
		}
	}
	public Homepage() {
		super();
	}

		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			//System.out.println("Vanten");
		
			addCarInfo("150", "No", "Diesel", "1000000", "Honda", "Honda City");
			addCarInfo("180", "No", "Diesel", "1500000", "Jeep", "Compass");
			addCarInfo("349", "Yes", "Petrol", "10000000", "Lamborghini", "Aventador");
			addCarInfo("407", "Yes", "Petrol", "2000000", "bugatti", "veyron");
			
			//System.out.println(request.getParameter("ShowAllCars"));
			
			String CarName=request.getParameter("CarName");
			String CarFeature=request.getParameter("CarFeature");
			System.out.println(CarName+" "+CarFeature);	
			
			if(CarName != null && CarName.trim().length() > 0 && CarFeature != null && CarFeature.trim().length() > 0){
				String searchDetails = getCarInfo(CarName, CarFeature);
				request.setAttribute("searchDetails", searchDetails);
			}
			else if(CarName != null && CarName.trim().length() > 0 && (CarFeature == null || CarFeature.trim().length() <= 0)){
				String searchDetails = getCarInfo(CarName, CarFeature);
				request.setAttribute("searchDetails", searchDetails);

			}
			else{
				String allCarInfo = "<table id='allCarsInfoTable'><tr>";
				for (Map.Entry m : allCars.entrySet()) {
					allCarInfo += "<td><table id='carInfoTable'>"
							+ "<th colspan='2'>"+m.getKey()+"</th>";
					for (Map.Entry features : ((HashMap<String, HashMap<String, String>>) m.getValue()).entrySet()) {
						String featureName = (String) features.getKey();
						String value = (String) features.getValue();
						allCarInfo += "<tr><td>"+featureName+"</td><td>"+value+"</td></tr>";
					}
					allCarInfo += "</table></td>";
				}
				allCarInfo +="</tr></table>";
				request.setAttribute("allCarInfo", allCarInfo);
			}
			request.getRequestDispatcher("Resources/Pages/Homepage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public static void addCarInfo(String topSpeed, String autoTrans, String fuelType, String price, String brand,
			String name) {
		HashMap<String, String> carInfo1 = new HashMap<String, String>();
		carInfo1.put("TopSpeed", topSpeed);
		carInfo1.put("AutoTransmission", autoTrans);
		carInfo1.put("FuelType", fuelType);
		carInfo1.put("Price", price);
		carInfo1.put("Brand", brand);
		allCars.put(name, carInfo1);
	}

	public static  String getCarInfo(String carName, String featureName) {
		String carInfo = null;
		if(allCars.get(carName) != null){
			if(featureName.equals("")){
				carInfo = carName + " - " + allCars.get(carName);
			}else{
				if(allCars.get(carName).get(featureName) != null){
					carInfo = (featureName + " of " + carName + " is - " + allCars.get(carName).get(featureName));
				}else{
					carInfo = "This feature is not available!";
				}
			}
		}else{
			carInfo = "This car is not available!";
		}
	    return carInfo;
	}
}
