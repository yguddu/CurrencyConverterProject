import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import bean.DatabaseBean;

//import bean.Request;
@WebServlet("/ProjectServlet")
public class ProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Map<String, String> mapElements= new HashMap<String, String>();
	
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        String action=request.getParameter("action");
        if("Refresh".equals(action)){
        	String url  = "https://openexchangerates.org/api/latest.json?app_id=decbfa521b494d56bcf25b139d4e7dee";    	
        	JSONObject jobj;
        	jobj=ApiCall.call(url);
        	ParseData parse=new ParseData();
        	List<DatabaseBean> bean = parse.parseData(jobj);
        	StoreAndFetchData.storeData(bean);
        	response.sendRedirect("/CurrencyConverterProject/index.jsp");
        }
        else if("convert".equals(action)){
        	String baseCurrency=request.getParameter("currency1");
        	String convertCurrency =request.getParameter("currency2");
        	String amount=request.getParameter("amount1");
        	if(amount.isEmpty() || !amount.matches("((-|\\+)?[0-9]+(\\.[0-9]+)?)+"))
        	{
        	    out.print("<center><h2><font color=\"white\">!..Enter a valid amount..!</font></h2></center>"); 
        	    RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
        	    rd.include(request, response);     		
        	}
        	else
        	{
      		   double value=Double.parseDouble(amount);
        	   StoreAndFetchData f=new StoreAndFetchData();
        	     if(mapElements.size()==0){
        	    	 mapElements =(Map<String, String>) f.fetchData();
        	    	 }
        	double baseValue =Double.parseDouble((mapElements.get(baseCurrency)));	
        	double convertValue =Double.parseDouble((mapElements.get(convertCurrency)));
			double dollarValue = value/baseValue;
			String resultValue = String.valueOf(dollarValue*convertValue);
			request.setAttribute("conversionResult", resultValue);
			RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
		    rd.forward(request, response); 
        	}    
        }

   }

}










