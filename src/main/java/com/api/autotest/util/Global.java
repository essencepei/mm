package com.api.autotest.util;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class Global {

    /**
     * 获取指定长度随机简体中文
     * @param length String
     * @return String
     */
    public  String RandomStr(String length) {
        String ret=new String ();
        int len=Integer.parseInt(length);
        for(int i=0;i<len;i++){
            String str = null;
            int hightPos, lowPos; // 定义高低位
            Random random = new Random();
            hightPos = (176 + Math.abs(random.nextInt(39))); //获取高位值
            lowPos = (161 + Math.abs(random.nextInt(93))); //获取低位值
            byte[] b = new byte[2];
            b[0] = (new Integer(hightPos).byteValue());
            b[1] = (new Integer(lowPos).byteValue());
            try{
                str = new String(b, "GBk"); //转成中文
            }
            catch (UnsupportedEncodingException ex)
            {
                ex.printStackTrace();
            }
            ret+=str;
        }
        return ret;
    }


    /**
     * 获取随机数
     * @param ArrStr String
     * @return String
     */
    public  String Random(String ArrStr) {
        int	sum	 = Integer.parseInt( ArrStr );
        int	like = (int) (Math.random() * sum);
        return String.valueOf(like);
    }


    /**
     * 获取当前时间
     * 传入 yyyy:MM:dd:HH:mm:ss
     * @param TimeFormat
     * @return
     */
    public  String Time(String TimeFormat) {
        SimpleDateFormat	df	=null;
        if(TimeFormat==null){
            df	= new SimpleDateFormat( "yyyyMMddHHmmss" );
        }else{
            df	= new SimpleDateFormat(TimeFormat );
        }
        String	time	= df.format( new Date() );
        return(time);
    }


}
