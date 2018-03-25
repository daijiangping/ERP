package com.nuoplus.system.utils;

import com.nuoplus.system.dao.SysDictionaryMapper;
import com.nuoplus.system.model.SysDictionary;

import javax.annotation.Resource;
import java.io.*;
import java.net.URL;
import java.net.URLConnection;

/**
 * 该方法是用于读取txt文件中的内容
 */
public class TxtUtil {


    public static BufferedReader readTxtFile(String filePath) {
        try {
    /*        URL url = new URL(filePath);
            URLConnection connection = url.openConnection();
              InputStreamReader read = new InputStreamReader(is, encoding);
            */
            File file=new File(filePath);
            String encoding = "GBK";
            InputStreamReader read = new InputStreamReader(
                    new FileInputStream(file),encoding);//  考虑到编码格式
            BufferedReader bufferedReader = new BufferedReader(read);
            String lineTxt;
/*            while ((lineTxt = bufferedReader.readLine()) != null) {
                System.out.println(lineTxt);
            }*/
            read.close();
            return bufferedReader;
        } catch (Exception e) {
            System.out.println("读取文件内容出错");
            e.printStackTrace();
        }
        return null;
    }

}
