package com.api.autotest.util;

public class Calculate {

public static void main(String[] args) {

}

public Boolean calculate(String ArrStrA, String jsonStr) {
    Boolean ispassed = true;
    try {
        if (ArrStrA.contains(">")||ArrStrA.contains("<")||ArrStrA.contains("=")||ArrStrA.contains(":")) {

        if (ArrStrA.contains(">")) {
            String Arr = ArrStrA.substring(0, ArrStrA.indexOf(">"));
            String Arr1 = ArrStrA.substring(ArrStrA.indexOf(">") + 1, ArrStrA.length());

            double sortOne = Double.parseDouble(StrGetLS(Arr, jsonStr).trim());
            double sortTne = Double.parseDouble(StrGetLS(Arr1, jsonStr).trim());
            System.out.println("sortOne:>"+sortOne+"  sortTne:"+sortTne);

            if (sortOne > sortTne) {
                ispassed = true;
            } else {
                ispassed = false;
            }
        }

        if (ArrStrA.contains("<")) {
            String Arr = ArrStrA.substring(0, ArrStrA.indexOf("<"));
            String Arr1 = ArrStrA.substring(ArrStrA.indexOf("<") + 1, ArrStrA.length());
            System.out.println("Arr:"+Arr+"  Arr1:"+Arr1);
            double sortOne = Double.parseDouble(StrGetLS(Arr, jsonStr).trim());
            double sortTne = Double.parseDouble(StrGetLS(Arr1, jsonStr).trim());
            System.out.println("sortOne:<"+sortOne+"  sortTne:"+sortTne);
            if (sortOne < sortTne) {
                ispassed = true;
            } else {
                ispassed = false;
            }
        }
        if (ArrStrA.contains("=") && ArrStrA.contains("==") == false) {
            String Arr = ArrStrA.substring(0, ArrStrA.indexOf("="));
            String Arr1 = ArrStrA.substring(ArrStrA.indexOf("=") + 1, ArrStrA.length());

            double sortOne  = Double.parseDouble(StrGetLS(Arr, jsonStr).trim());
            double sortTne = Double.parseDouble(StrGetLS(Arr1, jsonStr).trim());
            if (sortOne == sortTne) {
                ispassed = true;
            } else {
                ispassed = false;
            }
        }

        if (ArrStrA.contains(":")) {
            if (Public.getSubString(ArrStrA, ":") < 2 && ArrStrA.contains("\"") == false) {
                String Arr = ArrStrA.substring(0, ArrStrA.indexOf(":"));
                String Arr1 = ArrStrA.substring(ArrStrA.indexOf(":") + 1, ArrStrA.length());
                String sortOne = StrGetLS(Arr, jsonStr).trim();
                String sortTne = StrGetLS(Arr1, jsonStr);
                if (sortOne.equals(sortTne)) {
                    ispassed = true;
                } else {
                    ispassed = false;
                }
            }
        }}else{
            if(jsonStr.contains(ArrStrA.trim())){
                ispassed = true;
            } else {
                ispassed = false;
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        ispassed = false;

    }

    return  ispassed;
}
public String VARTOOLS(String ArrStrA, ParametersFactory polly) throws Exception {
    String CheckStr = new String();
    if (ArrStrA.contains("${") || ArrStrA.contains("Var")) {
        ArrStrA = polly.Extraction(ArrStrA);
    }
    CheckStr = ArrStrA;
    return CheckStr;
}


public String StrGetLS(String ArrStrA, String JsonStr) throws Exception {
    String boolString = ArrStrA;
    if (ArrStrA.contains("+")) {
        try {
            String key1 = getvar(ArrStrA.substring(ArrStrA.lastIndexOf("+") + 1, ArrStrA.length()),JsonStr);
            String key2 = getvar(ArrStrA.substring(0, ArrStrA.lastIndexOf("+")),JsonStr);
            boolString=  ArrStrA=String.valueOf(Long.parseLong(key1)+Long.parseLong(key2));
        }catch(Exception e){
        }

    }
    if (ArrStrA.contains("-")) {
        try {
            String key1 = getvar(ArrStrA.substring(ArrStrA.lastIndexOf("-") + 1, ArrStrA.length()),JsonStr);
            String key2 = getvar(ArrStrA.substring(0, ArrStrA.lastIndexOf("-")),JsonStr);
            boolString=ArrStrA=String.valueOf(Long.parseLong(key2)-Long.parseLong(key1));
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    if (ArrStrA.contains("%")) {
        try {
            String key1 = getvar(ArrStrA.substring(ArrStrA.lastIndexOf("%") + 1, ArrStrA.length()),JsonStr);
            String key2 = getvar(ArrStrA.substring(0, ArrStrA.lastIndexOf("%")),JsonStr);
            boolString=  ArrStrA=String.valueOf(Long.parseLong(key2)/Long.parseLong(key1));
        }catch(Exception e){
        }

    }
    if (ArrStrA.contains("*")) {
        try {
            String key1 = getvar(ArrStrA.substring(ArrStrA.lastIndexOf("*") + 1, ArrStrA.length()),JsonStr);
            String key2 = getvar(ArrStrA.substring(0, ArrStrA.lastIndexOf("*")),JsonStr);
            boolString=ArrStrA=String.valueOf(Long.parseLong(key2)*Long.parseLong(key1));
        }catch(Exception e){
        }
    }
    if (ArrStrA.contains("$")) {
        boolString=getvar( ArrStrA,  JsonStr);
    }
    return boolString;
}


    /**
     *节点值提取
     * @param ArrStrA
     * @param JsonStr
     * @return
     * @throws Exception
     */
    public String getvar(String ArrStrA, String JsonStr) throws Exception {
    String boolString = ArrStrA;
    JsonAnalysis json =new  JsonAnalysis();
    while(ArrStrA.contains("$")) {
        if (ArrStrA.contains("$.")) {
            boolString=ArrStrA=json.JsonPath(JsonStr, ArrStrA);
            if(boolString.contains("\"")){
                boolString=boolString.replace("\"","");
            }
        }

        if(ArrStrA.contains("$")==false){
            break;
        }
    }
    return boolString;
}




}
