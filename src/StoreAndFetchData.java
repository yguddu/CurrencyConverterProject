import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import bean.DatabaseBean;

public class StoreAndFetchData {
	
	public static void storeData(List bean ) {
		 Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession(); 
		 Transaction t=session.beginTransaction();
		 List<DatabaseBean> list=bean;
		 Iterator<DatabaseBean> itr=list.iterator();
		 while(itr.hasNext()){
			 DatabaseBean data=itr.next();
			 session.save(data);
			 //session.flush();
			 //t.commit();
		 }
		 t.commit();
		 session.close();
		 System.out.println("data saved in database");
		
	}

	public Map<String, String> fetchData() {
		Map<String, String> map=new HashMap<String, String>();
	    Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();  	
	    Query query=session.createQuery("from DatabaseBean order by id desc").setMaxResults(170);
	    List<DatabaseBean> list=query.list(); 
	    System.out.println("list size="+list.size());
	    Iterator<DatabaseBean> iterator=list.iterator();  
	    while(iterator.hasNext())
	    {  
		    DatabaseBean bean=iterator.next(); 
		    String key=bean.getCurrencyName();
		    String value=bean.getCurrencyValue();
		    map.put(key, value);
		   // System.out.println("fetching............");
		 //System.out.println(entry.getKey()+"    "+entry.getValue());      
	    }
		session.close();
		 return map;
	}
	
	public List<DatabaseBean> fetchHistoryData(String from_date,String to_date,String from_currency,String to_currency) 
	{  
		//List<Map<String, String>> list1 = new ArrayList<Map<String, String>>();
		Map<String, DatabaseBean> map=new HashMap<String, DatabaseBean>();
	    Session session=new Configuration().configure("hibernate.cfg.xml")  
	                        .buildSessionFactory().openSession();  
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		   try {
			Date dateFrom =(Date) dateFormat.parse(from_date);
			Date dateTo =(Date) dateFormat.parse(to_date);
			   
			   if(dateFrom.compareTo(dateTo) > 0){
				   List<DatabaseBean> list=new ArrayList<>();
				   return list;
			   }
			   else
			   {
				   String fromCurr=from_currency;
					 String toCurr=to_currency;    
					 Query query=session.createQuery("from DatabaseBean where date between :dateFrom and :dateTo and currencyName in (:fromCurr,:toCurr) order by date");  
					query.setParameter("dateFrom", dateFrom);
				    query.setParameter("dateTo", dateTo);	
				    query.setParameter("fromCurr", fromCurr);
				    query.setParameter("toCurr", toCurr);
					List<DatabaseBean> list=query.list();
					System.out.println("list created in history of size="+list.size());
					session.close();
					 return list;
			   }
		   } catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   return null;
	}
}
	

