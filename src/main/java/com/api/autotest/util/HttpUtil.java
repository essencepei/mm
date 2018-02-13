package com.api.autotest.util;

import java.io.BufferedReader;  
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;  
import java.net.URI;  
import java.util.ArrayList;  
import java.util.Iterator;  
import java.util.List;  
import java.util.Map;
import java.util.Scanner;

import org.apache.http.HttpEntity;  
import org.apache.http.HttpResponse;  
import org.apache.http.HttpStatus;  
import org.apache.http.NameValuePair;  
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.client.entity.UrlEncodedFormEntity;  
import org.apache.http.client.methods.CloseableHttpResponse;  
import org.apache.http.client.methods.HttpGet;  
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.CloseableHttpClient;  
import org.apache.http.impl.client.DefaultHttpClient;  
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.impl.cookie.BestMatchSpecFactory;
import org.apache.http.impl.cookie.BrowserCompatSpecFactory;
import org.apache.http.message.BasicNameValuePair;  
import org.apache.http.protocol.HTTP;  
import org.apache.http.util.EntityUtils;  
import org.apache.log4j.Logger;  

public class HttpUtil {
	private static Logger logger = Logger.getLogger(HttpUtil.class);  
    public static CookieStore cookieStore = new BasicCookieStore();
    public CloseableHttpClient httpclient = HttpClients.custom().setDefaultCookieStore(cookieStore).build();
    public static HttpClientContext context = null;
    
	public static String doGet(String url) {  
        try {  
            HttpClient client = new DefaultHttpClient();  
            //发送get请求  
            HttpGet request = new HttpGet(url);  
            HttpResponse response = client.execute(request);  
   
            /**请求发送成功，并得到响应**/  
            if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {  
                /**读取服务器返回过来的json字符串数据**/  
                String strResult = EntityUtils.toString(response.getEntity());  
                  
                return strResult;  
            }  
        }   
        catch (IOException e) {  
            e.printStackTrace();  
        }  
          
        return null;  
    } 
	
	/**
     * get请求
     * @param url
     * @param Parameter
     * @return
     * @throws Exception
     * @throws ClientProtocolException
     */
    public  String  sendGet(String url,String Parameter) throws Exception{
        StringBuffer responseStr=new StringBuffer ();
        try {
            if(Parameter.isEmpty()==false){url=url + "?" + Parameter;}
            HttpGet httpget = new HttpGet(url);
            System.out.println("executing reques:" + url);
            HttpResponse response = httpclient.execute(httpget);
            HttpEntity entity = response.getEntity();
            System.out.println("----------------------------------------");
            System.out.println(response.getStatusLine());
            if (entity != null) {
                System.out.println("Response content length: " + entity.getContentLength());
            }
            System.out.println("----------------------------------------");

            InputStream inSm = entity.getContent();
            Scanner inScn = new Scanner(inSm,"utf-8");
            while (inScn.hasNextLine()) {
                responseStr.append(inScn.nextLine().toString());
               // System.out.println(inScn.nextLine());
            }
            // Do not feel like reading the response body
            // Call abort on the request object
            httpget.abort();
        } finally {
            // When HttpClient instance is no longer needed,
            // shut down the connection manager to ensure
            // immediate deallocation of all system resources
            httpclient.getConnectionManager().shutdown();
        }
      return responseStr.toString();
    }
      
    /** 
     * post请求(用于key-value格式的参数) 
     * @param url 
     * @param params 
     * @return 
     */  
    public static String doPost(String url, Map params){  
        BufferedReader in = null;    
        try {    
            // 定义HttpClient    
            HttpClient client = new DefaultHttpClient();    
            // 实例化HTTP方法    
            HttpPost request = new HttpPost();    
            request.setURI(new URI(url));  
              
            //设置参数  
            List<NameValuePair> nvps = new ArrayList<NameValuePair>();   
            for (Iterator iter = params.keySet().iterator(); iter.hasNext();) {  
                String name = (String) iter.next();  
                String value = String.valueOf(params.get(name));  
                nvps.add(new BasicNameValuePair(name, value));  
                  
                //System.out.println(name +"-"+value);  
            }  
            request.setEntity(new UrlEncodedFormEntity(nvps,HTTP.UTF_8));  
              
            HttpResponse response = client.execute(request);    
            int code = response.getStatusLine().getStatusCode();  
            if(code == 200){    //请求成功  
                in = new BufferedReader(new InputStreamReader(response.getEntity()    
                        .getContent(),"utf-8"));  
                StringBuffer sb = new StringBuffer("");    
                String line = "";    
                String NL = System.getProperty("line.separator");    
                while ((line = in.readLine()) != null) {    
                    sb.append(line + NL);    
                }  
                  
                in.close(); 
//                System.out.println(sb);
                  
                return sb.toString();  
            }  
            else{   //  
                System.out.println("状态码：" + code);  
                return null;  
            }  
        }  
        catch(Exception e){  
            e.printStackTrace();  
              
            return null;  
        }  
    }  
      
    /** 
     * post请求（用于请求json格式的参数） 
     * @param url 
     * @param params 
     * @return 
     */  
    public static String doPost(String url, String params) throws Exception {  
        CloseableHttpClient httpclient = HttpClients.createDefault();  
        HttpPost httpPost = new HttpPost(url);// 创建httpPost     
        httpPost.setHeader("Accept", "application/json");   
        httpPost.setHeader("Content-Type", "application/json");  
        String charSet = "UTF-8";  
        StringEntity entity = new StringEntity(params, charSet);  
        httpPost.setEntity(entity);          
        CloseableHttpResponse response = null;  
        try {  
              
            response = httpclient.execute(httpPost);  
            StatusLine status = response.getStatusLine();  
            int state = status.getStatusCode();  
            if (state == HttpStatus.SC_OK) {  
                HttpEntity responseEntity = response.getEntity();  
                String jsonString = EntityUtils.toString(responseEntity);  
                return jsonString;  
            }  
            else{  
                 logger.error("请求返回:"+state+"("+url+")");  
            }  
        }  
        finally {  
            if (response != null) {  
                try {  
                    response.close();  
                } catch (IOException e) {  
                    e.printStackTrace();  
                }  
            }  
            try {  
                httpclient.close();  
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
        }  
        return null;  
    }
    
    /**
     * 保留cookie
     * @param httpResponse
     */
    public static void setCookieStore(HttpResponse httpResponse) {
        String setCookie =new String();
        if(httpResponse.getFirstHeader("Set-Cookie")!=null) {
             setCookie = httpResponse.getFirstHeader("Set-Cookie").getValue();
        }
        String JSESSIONID =new String();
        if(setCookie.isEmpty()==false) {
             JSESSIONID = setCookie.substring("JSESSIONID=".length(),
                    setCookie.indexOf(";"));
        }
        // 新建一个Cookie
        BasicClientCookie cookie = new BasicClientCookie("JSESSIONID",
                JSESSIONID);
        cookie.setVersion(0);
        cookie.setDomain("127.0.0.1");
        cookie.setPath("/CwlProClient");
        cookieStore.addCookie(cookie);
    }


    /**
     * 设置Context
     */
    public static void setContext() {
        context = HttpClientContext.create();
        Registry<CookieSpecProvider> registry = RegistryBuilder
                .<CookieSpecProvider> create()
                .register(CookieSpecs.BEST_MATCH, new BestMatchSpecFactory())
                .register(CookieSpecs.BROWSER_COMPATIBILITY,
                        new BrowserCompatSpecFactory()).build();
        context.setCookieSpecRegistry(registry);
        context.setCookieStore(cookieStore);
    }
}
