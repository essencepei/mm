package com.api.autotest.util;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.File;
import java.io.IOException;

public class ReadConfig {


    public static void main(String[] args) {
       System.out.println(readconfig("Template"));
    }

    /**
     * 配置读取工具
     * @param edge
     * @return
     */
    public  static String readconfig(String edge) {
    	String currentPath = System.getProperty("user.dir");
    	String Key=null;
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = factory.newDocumentBuilder();
            Document doc = db.parse(new File(currentPath+"/config.xml"));
            Element elmtInfo = doc.getDocumentElement();
            NodeList nodes = elmtInfo.getChildNodes();
            for (int i = 0; i < nodes.getLength(); i++)
            {
                Node result = nodes.item(i);
                if (result.getNodeType() == Node.ELEMENT_NODE && result.getNodeName().equals(edge)){
                	Key =result.getTextContent();
                 }
              }
            
        }
        catch (ParserConfigurationException e)
        {
            e.printStackTrace();
        }
        catch (SAXException e)
        {
            e.printStackTrace();
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
        return Key;
    }

    
}