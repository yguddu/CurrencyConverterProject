<%@page import="java.util.ListIterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
     <title>History Page</title>
</head>
<body>
<form action="/CurrencyConverterProject/HistoryServlet" method="post">
      <center>
              <h1>Exchange Rate History</h1>
      </center>
      From Currency:  <select name="currency1" id="currency1">
                <option selected="" value="EUR">Euro - EUR</option>
                <option value='AED' title='United Arab Emirates Dirham'>AED</option>
   <option value='AFN' title='Afghan Afghani'>AFN</option>
   <option value='ALL' title='Albanian Lek'>ALL</option>
   <option value='AMD' title='Armenian Dram'>AMD</option>
   <option value='ANG' title='Netherlands Antillean Guilder'>ANG</option>
   <option value='AOA' title='Angolan Kwanza'>AOA</option>
   <option value='ARS' title='Argentine Peso'>ARS</option>
   <option value='AUD' title='Australian Dollar'>AUD</option>
   <option value='AWG' title='Aruban Florin'>AWG</option>
   <option value='AZN' title='Azerbaijani Manat'>AZN</option>
   <option value='BAM' title='Bosnia-Herzegovina Convertible Mark'>BAM</option>
   <option value='BBD' title='Barbadian Dollar'>BBD</option>
   <option value='BDT' title='Bangladeshi Taka'>BDT</option>
   <option value='BGN' title='Bulgarian Lev'>BGN</option>
   <option value='BHD' title='Bahraini Dinar'>BHD</option>
   <option value='BIF' title='Burundian Franc'>BIF</option>
   <option value='BMD' title='Bermudan Dollar'>BMD</option>
   <option value='BND' title='Brunei Dollar'>BND</option>
   <option value='BOB' title='Bolivian Boliviano'>BOB</option>
   <option value='BRL' title='Brazilian Real'>BRL</option>
   <option value='BSD' title='Bahamian Dollar'>BSD</option>
   <option value='BTN' title='Bhutanese Ngultrum'>BTN</option>
   <option value='BWP' title='Botswanan Pula'>BWP</option>
   <option value='BYR' title='Belarusian Ruble'>BYR</option>
   <option value='BZD' title='Belize Dollar'>BZD</option>
   <option value='CAD' title='Canadian Dollar'>CAD</option>
   <option value='CDF' title='Congolese Franc'>CDF</option>
   <option value='CHF' title='Swiss Franc'>CHF</option>
   <option value='CLF' title='Chilean Unit of Account (UF)'>CLF</option>
   <option value='CLP' title='Chilean Peso'>CLP</option>
   <option value='CNY' title='Chinese Yuan'>CNY</option>
   <option value='COP' title='Colombian Peso'>COP</option>
   <option value='CRC' title='Costa Rican Colón'>CRC</option>
   <option value='CUP' title='Cuban Peso'>CUP</option>
   <option value='CVE' title='Cape Verdean Escudo'>CVE</option>
   <option value='CZK' title='Czech Republic Koruna'>CZK</option>
   <option value='DJF' title='Djiboutian Franc'>DJF</option>
   <option value='DKK' title='Danish Krone'>DKK</option>
   <option value='DOP' title='Dominican Peso'>DOP</option>
   <option value='DZD' title='Algerian Dinar'>DZD</option>
   <option value='EGP' title='Egyptian Pound'>EGP</option>
   <option value='ETB' title='Ethiopian Birr'>ETB</option>
   <option value='FJD' title='Fijian Dollar'>FJD</option>
   <option value='FKP' title='Falkland Islands Pound'>FKP</option>
   <option value='GBP' title='British Pound Sterling'>GBP</option>
   <option value='GEL' title='Georgian Lari'>GEL</option>
   <option value='GHS' title='Ghanaian Cedi'>GHS</option>
   <option value='GIP' title='Gibraltar Pound'>GIP</option>
   <option value='GMD' title='Gambian Dalasi'>GMD</option>
   <option value='GNF' title='Guinean Franc'>GNF</option>
   <option value='GTQ' title='Guatemalan Quetzal'>GTQ</option>
   <option value='GYD' title='Guyanaese Dollar'>GYD</option>
   <option value='HKD' title='Hong Kong Dollar'>HKD</option>
   <option value='HNL' title='Honduran Lempira'>HNL</option>
   <option value='HRK' title='Croatian Kuna'>HRK</option>
   <option value='HTG' title='Haitian Gourde'>HTG</option>
   <option value='HUF' title='Hungarian Forint'>HUF</option>
   <option value='IDR' title='Indonesian Rupiah'>IDR</option>
   <option value='ILS' title='Israeli New Sheqel'>ILS</option>
   <option value='INR' title='Indian Rupee'>INR</option>
   <option value='IQD' title='Iraqi Dinar'>IQD</option>
   <option value='IRR' title='Iranian Rial'>IRR</option>
   <option value='ISK' title='Icelandic Króna'>ISK</option>
   <option value='JEP' title='Jersey Pound'>JEP</option>
   <option value='JMD' title='Jamaican Dollar'>JMD</option>
   <option value='JOD' title='Jordanian Dinar'>JOD</option>
   <option value='JPY' title='Japanese Yen'>JPY</option>
   <option value='KES' title='Kenyan Shilling'>KES</option>
   <option value='KGS' title='Kyrgystani Som'>KGS</option>
   <option value='KHR' title='Cambodian Riel'>KHR</option>
   <option value='KMF' title='Comorian Franc'>KMF</option>
   <option value='KPW' title='North Korean Won'>KPW</option>
   <option value='KRW' title='South Korean Won'>KRW</option>
   <option value='KWD' title='Kuwaiti Dinar'>KWD</option>
   <option value='KYD' title='Cayman Islands Dollar'>KYD</option>
   <option value='KZT' title='Kazakhstani Tenge'>KZT</option>
   <option value='LAK' title='Laotian Kip'>LAK</option>
   <option value='LBP' title='Lebanese Pound'>LBP</option>
   <option value='LKR' title='Sri Lankan Rupee'>LKR</option>
   <option value='LRD' title='Liberian Dollar'>LRD</option>
   <option value='LSL' title='Lesotho Loti'>LSL</option>
   <option value='LTL' title='Lithuanian Litas'>LTL</option>
   <option value='LVL' title='Latvian Lats'>LVL</option>
   <option value='LYD' title='Libyan Dinar'>LYD</option>
   <option value='MAD' title='Moroccan Dirham'>MAD</option>
   <option value='MDL' title='Moldovan Leu'>MDL</option>
   <option value='MGA' title='Malagasy Ariary'>MGA</option>
   <option value='MKD' title='Macedonian Denar'>MKD</option>
   <option value='MMK' title='Myanma Kyat'>MMK</option>
   <option value='MNT' title='Mongolian Tugrik'>MNT</option>
   <option value='MOP' title='Macanese Pataca'>MOP</option>
   <option value='MRO' title='Mauritanian Ouguiya'>MRO</option>
   <option value='MUR' title='Mauritian Rupee'>MUR</option>
   <option value='MVR' title='Maldivian Rufiyaa'>MVR</option>
   <option value='MWK' title='Malawian Kwacha'>MWK</option>
   <option value='MXN' title='Mexican Peso'>MXN</option>
   <option value='MYR' title='Malaysian Ringgit'>MYR</option>
   <option value='MZN' title='Mozambican Metical'>MZN</option>
   <option value='NAD' title='Namibian Dollar'>NAD</option>
   <option value='NGN' title='Nigerian Naira'>NGN</option>
   <option value='NIO' title='Nicaraguan Córdoba'>NIO</option>
   <option value='NOK' title='Norwegian Krone'>NOK</option>
   <option value='NPR' title='Nepalese Rupee'>NPR</option>
   <option value='NZD' title='New Zealand Dollar'>NZD</option>
   <option value='OMR' title='Omani Rial'>OMR</option>
   <option value='PAB' title='Panamanian Balboa'>PAB</option>
   <option value='PEN' title='Peruvian Nuevo Sol'>PEN</option>
   <option value='PGK' title='Papua New Guinean Kina'>PGK</option>
   <option value='PHP' title='Philippine Peso'>PHP</option>
   <option value='PKR' title='Pakistani Rupee'>PKR</option>
   <option value='PLN' title='Polish Zloty'>PLN</option>
   <option value='PYG' title='Paraguayan Guarani'>PYG</option>
   <option value='QAR' title='Qatari Rial'>QAR</option>
   <option value='RON' title='Romanian Leu'>RON</option>
   <option value='RSD' title='Serbian Dinar'>RSD</option>
   <option value='RUB' title='Russian Ruble'>RUB</option>
   <option value='RWF' title='Rwandan Franc'>RWF</option>
   <option value='SAR' title='Saudi Riyal'>SAR</option>
   <option value='SBD' title='Solomon Islands Dollar'>SBD</option>
   <option value='SCR' title='Seychellois Rupee'>SCR</option>
   <option value='SDG' title='Sudanese Pound'>SDG</option>
   <option value='SEK' title='Swedish Krona'>SEK</option>
   <option value='SGD' title='Singapore Dollar'>SGD</option>
   <option value='SHP' title='Saint Helena Pound'>SHP</option>
   <option value='SLL' title='Sierra Leonean Leone'>SLL</option>
   <option value='SOS' title='Somali Shilling'>SOS</option>
   <option value='SRD' title='Surinamese Dollar'>SRD</option>
   <option value='STD' title='São Tomé and Príncipe Dobra'>STD</option>
   <option value='SVC' title='Salvadoran Colón'>SVC</option>
   <option value='SYP' title='Syrian Pound'>SYP</option>
   <option value='SZL' title='Swazi Lilangeni'>SZL</option>
   <option value='THB' title='Thai Baht'>THB</option>
   <option value='TJS' title='Tajikistani Somoni'>TJS</option>
   <option value='TMT' title='Turkmenistani Manat'>TMT</option>
   <option value='TND' title='Tunisian Dinar'>TND</option>
   <option value='TOP' title='Tongan Pa?anga'>TOP</option>
   <option value='TRY' title='Turkish Lira'>TRY</option>
   <option value='TTD' title='Trinidad and Tobago Dollar'>TTD</option>
   <option value='TWD' title='New Taiwan Dollar'>TWD</option>
   <option value='TZS' title='Tanzanian Shilling'>TZS</option>
   <option value='UAH' title='Ukrainian Hryvnia'>UAH</option>
   <option value='UGX' title='Ugandan Shilling'>UGX</option>
   <option value='USD' title='United States Dollar'>USD</option>
   <option value='UYU' title='Uruguayan Peso'>UYU</option>
   <option value='UZS' title='Uzbekistan Som'>UZS</option>
   <option value='VEF' title='Venezuelan Bolívar'>VEF</option>
   <option value='VND' title='Vietnamese Dong'>VND</option>
   <option value='VUV' title='Vanuatu Vatu'>VUV</option>
   <option value='WST' title='Samoan Tala'>WST</option>
   <option value='XAF' title='CFA Franc BEAC'>XAF</option>
   <option value='XCD' title='East Caribbean Dollar'>XCD</option>
   <option value='XDR' title='Special Drawing Rights'>XDR</option>
   <option value='XOF' title='CFA Franc BCEAO'>XOF</option>
   <option value='XPF' title='CFP Franc'>XPF</option>
   <option value='YER' title='Yemeni Rial'>YER</option>
   <option value='ZAR' title='South African Rand'>ZAR</option>
   <option value='ZMK' title='Zambian Kwacha'>ZMK</option>
   <option value='ZWL' title='Zimbabwean Dollar'>ZWL</option>
</select>
      To Currency:<select name="currency2" id="currency2">
                <option selected="" value="EUR">Euro - EUR</option>
                <option value='AED' title='United Arab Emirates Dirham'>AED</option>
   <option value='AFN' title='Afghan Afghani'>AFN</option>
   <option value='ALL' title='Albanian Lek'>ALL</option>
   <option value='AMD' title='Armenian Dram'>AMD</option>
   <option value='ANG' title='Netherlands Antillean Guilder'>ANG</option>
   <option value='AOA' title='Angolan Kwanza'>AOA</option>
   <option value='ARS' title='Argentine Peso'>ARS</option>
   <option value='AUD' title='Australian Dollar'>AUD</option>
   <option value='AWG' title='Aruban Florin'>AWG</option>
   <option value='AZN' title='Azerbaijani Manat'>AZN</option>
   <option value='BAM' title='Bosnia-Herzegovina Convertible Mark'>BAM</option>
   <option value='BBD' title='Barbadian Dollar'>BBD</option>
   <option value='BDT' title='Bangladeshi Taka'>BDT</option>
   <option value='BGN' title='Bulgarian Lev'>BGN</option>
   <option value='BHD' title='Bahraini Dinar'>BHD</option>
   <option value='BIF' title='Burundian Franc'>BIF</option>
   <option value='BMD' title='Bermudan Dollar'>BMD</option>
   <option value='BND' title='Brunei Dollar'>BND</option>
   <option value='BOB' title='Bolivian Boliviano'>BOB</option>
   <option value='BRL' title='Brazilian Real'>BRL</option>
   <option value='BSD' title='Bahamian Dollar'>BSD</option>
   <option value='BTN' title='Bhutanese Ngultrum'>BTN</option>
   <option value='BWP' title='Botswanan Pula'>BWP</option>
   <option value='BYR' title='Belarusian Ruble'>BYR</option>
   <option value='BZD' title='Belize Dollar'>BZD</option>
   <option value='CAD' title='Canadian Dollar'>CAD</option>
   <option value='CDF' title='Congolese Franc'>CDF</option>
   <option value='CHF' title='Swiss Franc'>CHF</option>
   <option value='CLF' title='Chilean Unit of Account (UF)'>CLF</option>
   <option value='CLP' title='Chilean Peso'>CLP</option>
   <option value='CNY' title='Chinese Yuan'>CNY</option>
   <option value='COP' title='Colombian Peso'>COP</option>
   <option value='CRC' title='Costa Rican Colón'>CRC</option>
   <option value='CUP' title='Cuban Peso'>CUP</option>
   <option value='CVE' title='Cape Verdean Escudo'>CVE</option>
   <option value='CZK' title='Czech Republic Koruna'>CZK</option>
   <option value='DJF' title='Djiboutian Franc'>DJF</option>
   <option value='DKK' title='Danish Krone'>DKK</option>
   <option value='DOP' title='Dominican Peso'>DOP</option>
   <option value='DZD' title='Algerian Dinar'>DZD</option>
   <option value='EGP' title='Egyptian Pound'>EGP</option>
   <option value='ETB' title='Ethiopian Birr'>ETB</option>
   <option value='FJD' title='Fijian Dollar'>FJD</option>
   <option value='FKP' title='Falkland Islands Pound'>FKP</option>
   <option value='GBP' title='British Pound Sterling'>GBP</option>
   <option value='GEL' title='Georgian Lari'>GEL</option>
   <option value='GHS' title='Ghanaian Cedi'>GHS</option>
   <option value='GIP' title='Gibraltar Pound'>GIP</option>
   <option value='GMD' title='Gambian Dalasi'>GMD</option>
   <option value='GNF' title='Guinean Franc'>GNF</option>
   <option value='GTQ' title='Guatemalan Quetzal'>GTQ</option>
   <option value='GYD' title='Guyanaese Dollar'>GYD</option>
   <option value='HKD' title='Hong Kong Dollar'>HKD</option>
   <option value='HNL' title='Honduran Lempira'>HNL</option>
   <option value='HRK' title='Croatian Kuna'>HRK</option>
   <option value='HTG' title='Haitian Gourde'>HTG</option>
   <option value='HUF' title='Hungarian Forint'>HUF</option>
   <option value='IDR' title='Indonesian Rupiah'>IDR</option>
   <option value='ILS' title='Israeli New Sheqel'>ILS</option>
   <option value='INR' title='Indian Rupee'>INR</option>
   <option value='IQD' title='Iraqi Dinar'>IQD</option>
   <option value='IRR' title='Iranian Rial'>IRR</option>
   <option value='ISK' title='Icelandic Króna'>ISK</option>
   <option value='JEP' title='Jersey Pound'>JEP</option>
   <option value='JMD' title='Jamaican Dollar'>JMD</option>
   <option value='JOD' title='Jordanian Dinar'>JOD</option>
   <option value='JPY' title='Japanese Yen'>JPY</option>
   <option value='KES' title='Kenyan Shilling'>KES</option>
   <option value='KGS' title='Kyrgystani Som'>KGS</option>
   <option value='KHR' title='Cambodian Riel'>KHR</option>
   <option value='KMF' title='Comorian Franc'>KMF</option>
   <option value='KPW' title='North Korean Won'>KPW</option>
   <option value='KRW' title='South Korean Won'>KRW</option>
   <option value='KWD' title='Kuwaiti Dinar'>KWD</option>
   <option value='KYD' title='Cayman Islands Dollar'>KYD</option>
   <option value='KZT' title='Kazakhstani Tenge'>KZT</option>
   <option value='LAK' title='Laotian Kip'>LAK</option>
   <option value='LBP' title='Lebanese Pound'>LBP</option>
   <option value='LKR' title='Sri Lankan Rupee'>LKR</option>
   <option value='LRD' title='Liberian Dollar'>LRD</option>
   <option value='LSL' title='Lesotho Loti'>LSL</option>
   <option value='LTL' title='Lithuanian Litas'>LTL</option>
   <option value='LVL' title='Latvian Lats'>LVL</option>
   <option value='LYD' title='Libyan Dinar'>LYD</option>
   <option value='MAD' title='Moroccan Dirham'>MAD</option>
   <option value='MDL' title='Moldovan Leu'>MDL</option>
   <option value='MGA' title='Malagasy Ariary'>MGA</option>
   <option value='MKD' title='Macedonian Denar'>MKD</option>
   <option value='MMK' title='Myanma Kyat'>MMK</option>
   <option value='MNT' title='Mongolian Tugrik'>MNT</option>
   <option value='MOP' title='Macanese Pataca'>MOP</option>
   <option value='MRO' title='Mauritanian Ouguiya'>MRO</option>
   <option value='MUR' title='Mauritian Rupee'>MUR</option>
   <option value='MVR' title='Maldivian Rufiyaa'>MVR</option>
   <option value='MWK' title='Malawian Kwacha'>MWK</option>
   <option value='MXN' title='Mexican Peso'>MXN</option>
   <option value='MYR' title='Malaysian Ringgit'>MYR</option>
   <option value='MZN' title='Mozambican Metical'>MZN</option>
   <option value='NAD' title='Namibian Dollar'>NAD</option>
   <option value='NGN' title='Nigerian Naira'>NGN</option>
   <option value='NIO' title='Nicaraguan Córdoba'>NIO</option>
   <option value='NOK' title='Norwegian Krone'>NOK</option>
   <option value='NPR' title='Nepalese Rupee'>NPR</option>
   <option value='NZD' title='New Zealand Dollar'>NZD</option>
   <option value='OMR' title='Omani Rial'>OMR</option>
   <option value='PAB' title='Panamanian Balboa'>PAB</option>
   <option value='PEN' title='Peruvian Nuevo Sol'>PEN</option>
   <option value='PGK' title='Papua New Guinean Kina'>PGK</option>
   <option value='PHP' title='Philippine Peso'>PHP</option>
   <option value='PKR' title='Pakistani Rupee'>PKR</option>
   <option value='PLN' title='Polish Zloty'>PLN</option>
   <option value='PYG' title='Paraguayan Guarani'>PYG</option>
   <option value='QAR' title='Qatari Rial'>QAR</option>
   <option value='RON' title='Romanian Leu'>RON</option>
   <option value='RSD' title='Serbian Dinar'>RSD</option>
   <option value='RUB' title='Russian Ruble'>RUB</option>
   <option value='RWF' title='Rwandan Franc'>RWF</option>
   <option value='SAR' title='Saudi Riyal'>SAR</option>
   <option value='SBD' title='Solomon Islands Dollar'>SBD</option>
   <option value='SCR' title='Seychellois Rupee'>SCR</option>
   <option value='SDG' title='Sudanese Pound'>SDG</option>
   <option value='SEK' title='Swedish Krona'>SEK</option>
   <option value='SGD' title='Singapore Dollar'>SGD</option>
   <option value='SHP' title='Saint Helena Pound'>SHP</option>
   <option value='SLL' title='Sierra Leonean Leone'>SLL</option>
   <option value='SOS' title='Somali Shilling'>SOS</option>
   <option value='SRD' title='Surinamese Dollar'>SRD</option>
   <option value='STD' title='São Tomé and Príncipe Dobra'>STD</option>
   <option value='SVC' title='Salvadoran Colón'>SVC</option>
   <option value='SYP' title='Syrian Pound'>SYP</option>
   <option value='SZL' title='Swazi Lilangeni'>SZL</option>
   <option value='THB' title='Thai Baht'>THB</option>
   <option value='TJS' title='Tajikistani Somoni'>TJS</option>
   <option value='TMT' title='Turkmenistani Manat'>TMT</option>
   <option value='TND' title='Tunisian Dinar'>TND</option>
   <option value='TOP' title='Tongan Pa?anga'>TOP</option>
   <option value='TRY' title='Turkish Lira'>TRY</option>
   <option value='TTD' title='Trinidad and Tobago Dollar'>TTD</option>
   <option value='TWD' title='New Taiwan Dollar'>TWD</option>
   <option value='TZS' title='Tanzanian Shilling'>TZS</option>
   <option value='UAH' title='Ukrainian Hryvnia'>UAH</option>
   <option value='UGX' title='Ugandan Shilling'>UGX</option>
   <option value='USD' title='United States Dollar'>USD</option>
   <option value='UYU' title='Uruguayan Peso'>UYU</option>
   <option value='UZS' title='Uzbekistan Som'>UZS</option>
   <option value='VEF' title='Venezuelan Bolívar'>VEF</option>
   <option value='VND' title='Vietnamese Dong'>VND</option>
   <option value='VUV' title='Vanuatu Vatu'>VUV</option>
   <option value='WST' title='Samoan Tala'>WST</option>
   <option value='XAF' title='CFA Franc BEAC'>XAF</option>
   <option value='XCD' title='East Caribbean Dollar'>XCD</option>
   <option value='XDR' title='Special Drawing Rights'>XDR</option>
   <option value='XOF' title='CFA Franc BCEAO'>XOF</option>
   <option value='XPF' title='CFP Franc'>XPF</option>
   <option value='YER' title='Yemeni Rial'>YER</option>
   <option value='ZAR' title='South African Rand'>ZAR</option>
   <option value='ZMK' title='Zambian Kwacha'>ZMK</option>
   <option value='ZWL' title='Zimbabwean Dollar'>ZWL</option>
</select>
      <br><br>
      From Date:<input type="date" size="20" name="fromdate"/>
      To Date:<input type="date" size="20" name="todate"/>
      <br><br>
      <input type="submit" size="20" name="submit"/>
</form>

<div class="container">
  <h2>History Table</h2>                                                                                      
     <div class="table-responsive">          
        <table class="table">
              <thead>
                     <tr>
                         <th>#</th>
                         <th>Date</th>
                         <th>From Currency</th>
                         <th>To Currency</th>
                         <th>Value</th>
                    </tr>
             </thead>
             <tbody>
                    <%
                      int i=1;
                      if(request.getAttribute("TableArrayList")!=null)
                     {
    	              ArrayList<TableBean> bean = (ArrayList<TableBean>)request.getAttribute("TableArrayList");
    	              ListIterator<TableBean> iterator = bean.listIterator();
    	              while(iterator.hasNext())
    	                  {
    		                 TableBean beanObject = (TableBean)iterator.next();
    	           %>
    	           <tr>
                       <td><% out.print(i++);%> </td>
                       <td><% out.print(beanObject.getDate()); %></td>
                       <td><% out.print(beanObject.getFrom_Currency());%></td>
                       <td><% out.print(beanObject.getTo_currency());%></td>
                       <td><% out.print(beanObject.getResult_value());%></td>     
                  </tr>
                       <%  
    	                 }
  	
                    }
                       %>
             </tbody>
       </table>
   </div>
</div>


</body>
</html>