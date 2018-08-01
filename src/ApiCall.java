import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class ApiCall {

	public static JSONObject call(String url) {
		String responseData = getUrlContents(url);
    	JSONObject jobj = null;
    	//jobj=ParseData.parseData(responseData);
    	JSONParser parse = new JSONParser();
    	try {
			jobj = (JSONObject)parse.parse(responseData);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jobj;
	}
	
	
	private static String getUrlContents(String theUrl)
	  {
	    StringBuilder content = new StringBuilder();

	    try
	    {
	      URL url = new URL(theUrl);
	      URLConnection urlConnection = url.openConnection();
	      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
	      String line;
	      while ((line = bufferedReader.readLine()) != null)
	      {
	        content.append(line + "\n");
	      }
	      bufferedReader.close();
	    }
	    catch(Exception e)
	    {
	      e.printStackTrace();
	    }
	    return content.toString();
	  }  
	

}
