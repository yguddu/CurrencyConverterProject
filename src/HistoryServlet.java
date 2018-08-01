import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.DatabaseBean;
import bean.TableBean;
@WebServlet("/HistoryServlet")
public class HistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Date dateFrom;
	private Date dateTo;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String fromCurrency=request.getParameter("currency1");
		String toCurrency=request.getParameter("currency2");
		String from_date=request.getParameter("fromdate");
		String to_date=request.getParameter("todate");
		if(from_date.isEmpty() || to_date.isEmpty()){
			out.print("<center><h2>!..Enter a valid date..!</h2></center>"); 
    	    RequestDispatcher rd=request.getRequestDispatcher("/history.jsp");  
    	    rd.include(request, response);
		}
		else{
			from_date=from_date.concat(" "+"00:00:00");
			to_date=to_date.concat(" "+"23:59:59");
			ArrayList<TableBean> table=new ArrayList<TableBean>();
	    	StoreAndFetchData fetchHistory=new StoreAndFetchData();
	    	List<DatabaseBean> list=(List<DatabaseBean>) fetchHistory.fetchHistoryData(from_date, to_date, fromCurrency, toCurrency);
	    	if(list.isEmpty()){
	    		out.print("<center><h2>!..Check Date ..!</h2></center>"); 
        	    RequestDispatcher rd=request.getRequestDispatcher("/history.jsp");  
        	    rd.include(request, response);     		
	    	}
	    	else{
	    		Iterator<DatabaseBean> iterator=list.iterator();
		    	System.out.println("history data fetched");
		    	 while(iterator.hasNext())
				    {  
				        DatabaseBean data=iterator.next(); 
				        Timestamp date=data.getDate();
				        String dateString=date.toString();
				        String curr=data.getCurrencyName();
						double baseValue=0.0;
						double convertValue=0.0;
				        if(curr.equals(fromCurrency)){
				        	baseValue =Double.parseDouble((data.getCurrencyValue()));
				        }
				        else if(curr.equals(toCurrency)){
				             convertValue =Double.parseDouble((data.getCurrencyValue()));
				        }
				        else{
				        	out.print("<center><h2>!..Data Invalid..!</h2></center>"); 
			        	    RequestDispatcher rd=request.getRequestDispatcher("/history.jsp");  
			        	    rd.include(request, response);     		
				        }
				        DatabaseBean data1=iterator.next();
				        String curr1=data1.getCurrencyName();
				    	if(curr1.equals(fromCurrency)){
				        	 baseValue =Double.parseDouble((data1.getCurrencyValue()));
				        }
				        else if(curr1.equals(toCurrency)){
				        	 convertValue =Double.parseDouble((data1.getCurrencyValue()));
				        }
				        else{
				        	out.print("<center><h2>!..Data Invalid..!</h2></center>"); 
			        	    RequestDispatcher rd=request.getRequestDispatcher("/history.jsp");  
			        	    rd.include(request, response);     		
				        }
						double dollarValue = 1/baseValue;
						String resultValue = String.valueOf(dollarValue*convertValue);
						table.add(new TableBean(dateString,fromCurrency,toCurrency,resultValue));
				    }
		    	 	request.setAttribute("TableArrayList",table);
					RequestDispatcher rd=request.getRequestDispatcher("/history.jsp");  
				    rd.forward(request, response); 
		    	
			}
	    }
	}

}
