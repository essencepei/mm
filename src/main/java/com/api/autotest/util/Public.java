package com.api.autotest.util;

import java.io.*;
import java.nio.CharBuffer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Public {

    /**
     * 读取html内容
     * @param fileName
     * @return
     * @throws IOException
     */
    public static String html(String fileName) throws IOException {
        String a = null;
        String text = null;
        String filePath =fileName;
        CharBuffer cbuf = null;
        File file = new File(filePath);
        try{
            InputStreamReader fReader=new InputStreamReader(new FileInputStream(file),"utf-8");
            cbuf = CharBuffer.allocate((int) file.length());
            fReader.read(cbuf);
            text = new String(cbuf.array());
            return text;
        }
        catch (FileNotFoundException e)
        {
            e.printStackTrace();
        }
        catch (IOException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return a;


    }

    /**
     * 计算字符串中某字符出现次数
     * @param str
     * @param key
     * @return
     */
    public static int  getSubString(String str,String key) {
        int count = 0;
        int index = 0;
        while ((index = str.indexOf(key, index)) != -1) {
            index = index + key.length();
            count++;
        }
        return count;
    }

    /**
     * 处理字符串格式
     * @param str
     * @return
     */
    public static String replaceStr(String str) {
        String dest = "";
        if (str!=null) {
            Pattern p = Pattern.compile("\\s*|\t|\r|\n");
            Matcher m = p.matcher(str);
            dest = m.replaceAll("");
        }
        return dest;
    }


}
