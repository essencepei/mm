package com.api.autotest.util;


import java.io.IOException;
import java.util.HashMap;

import com.api.autotest.model.StepVO;
public class ParametersFactory {
	
	private static HashMap<String, String> daoMap=new  HashMap<String, String>();
	private String VarList[];
    /**
     * 参数提取
     * @param step
     * @throws IOException
     */
    public  static void   GetParameter(StepVO step) throws IOException {
        String response=step.getResponse();
        String Parameter=step.getTransfer();
        if(Parameter!=null&&!Parameter.equals("")){
            String ParameterList[]=Parameter.split(",");
            for(int ium=0;ium<ParameterList.length;ium++){
                String Pstr=ParameterList[ium];
                if(Pstr.contains("=")){
                    JsonAnalysis jpath=new JsonAnalysis();
                    String key =Pstr.substring(0,Pstr.indexOf("="));
                    String value=Pstr.substring(Pstr.indexOf("=")+1,Pstr.length());
                    setDaoMap(key,jpath.JsonPath(response,value));
                }
            }
        }
//        Public.logs("参数池: " + daoMap.toString());
    }



    public HashMap<String, String> getDaoMap() {
        return daoMap;
    }

    public static void setDaoMap(String Key,String value) {
        daoMap.put(Key,value);
    }

    public String[] getVarList() {
        return VarList;
    }

    public void setVarList(String varList) {
        VarList = varList.split(",");
    }




    /**
     * 参数替换
     * @param
     * @throws IOException
     */
    public static  String   Extraction(String ArrStr) throws IOException {
        Global Global=new  Global();
        //替换传递参数
       if(ArrStr.contains("${")){
           while (ArrStr.contains("${")){
               String key =ArrStr.substring(ArrStr.indexOf("${")+2,ArrStr.indexOf("}"));
               if(daoMap.get(key.trim())!=null){
                   ArrStr=ArrStr.replace("${"+key+"}",daoMap.get(key.trim()));
               }else{
                   ArrStr=ArrStr.replace("${"+key+"}","null");
               }
           }

       }
        //替换当前时间
        if(ArrStr.contains("VarTime")){
            if(ArrStr.contains("VarTime(")){
               String done=ArrStr.substring(ArrStr.indexOf("VarTime(")+8,ArrStr.indexOf(")"));
               ArrStr=ArrStr.replaceAll("VarTime("+done+")",Global.Time(done));

            }else{
               ArrStr=ArrStr.replaceAll("VarTime",Global.Time(null));
            }
        }

        //替换随机字符串
        if(ArrStr.contains("VarRondomStr(")){
            if(ArrStr.contains("VarRondomStr(")){
                String done=ArrStr.substring(ArrStr.indexOf("VarRondomStr(")+13,ArrStr.indexOf(")"));
                ArrStr=ArrStr.replaceAll("VarRondomStr("+done+")",Global.RandomStr(done));

            }else{
                ArrStr=ArrStr.replaceAll("VarTime",Global.Time(null));
            }
        }

        //替换当前JAVA时间
        if(ArrStr.contains("JTime")){
            if(ArrStr.contains("JTime(")){
                String done=ArrStr.substring(ArrStr.indexOf("JTime(")+8,ArrStr.indexOf(")"));
                long sumTime=System.currentTimeMillis()+Integer.parseInt(done);
                ArrStr=ArrStr.replaceAll("VarTime("+done+")",String.valueOf(sumTime));
            }else{
                ArrStr=ArrStr.replaceAll("VarTime",String.valueOf(System.currentTimeMillis()));
            }
        }


        //替换随机数
        if(ArrStr.contains("VarRondom")){
            if(ArrStr.contains("VarRondom(")){
                String	VarRondom=new String();
                VarRondom	= ArrStr.substring( ArrStr.indexOf( "VarRondom(" ), ArrStr.lastIndexOf( ")" ) ) + ")";
                String	inter= VarRondom.substring( VarRondom.indexOf( "(" ) + 1, VarRondom.lastIndexOf( ")" ) );
                ArrStr=ArrStr.replaceAll("VarTime("+VarRondom+")",Global.Random(inter));
            }
        }

        return ArrStr;
    }


    }






