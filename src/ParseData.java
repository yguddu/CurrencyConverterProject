import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Set;

import org.json.simple.JSONObject;

import bean.DatabaseBean;

public class ParseData {

	public List<DatabaseBean> parseData(JSONObject jobj) {
		 Calendar calendar = Calendar.getInstance();
		 java.sql.Timestamp date = new java.sql.Timestamp(calendar.getTime().getTime());
		 JSONObject jObject = (JSONObject)jobj.get("rates");
		 Set<String> key = jObject.keySet();
		
		 List <DatabaseBean> currencyExchange=new ArrayList<>();
		 for(String s:key)
			{
			 DatabaseBean bean=new DatabaseBean();
				String keyStr = s;
				String valueStr = String.valueOf(jObject.get(s));
				bean.setBaseCurrency("USD");
				bean.setCurrencyName(keyStr);
				bean.setCurrencyValue(valueStr);
				bean.setDate(date);
				currencyExchange.add(bean);
			}
		return currencyExchange;
	}
	
}
