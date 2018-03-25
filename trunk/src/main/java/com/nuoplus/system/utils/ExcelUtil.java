package com.nuoplus.system.utils;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.ss.usermodel.Cell;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

/**
 * excel 导入
 * Created by daijiangping on 2017/4/26.
 */
public class ExcelUtil {
    /**
     * 通过http读取服务器上的文件读取文件
     */
    public static InputStream httpReadUrlFile(String webPath) throws Exception {
        URL url = new URL(webPath);//eg http://localhost:8080//resources/upload/2017/04/26/xxx.xls
        URLConnection connection = url.openConnection();
        InputStream is = connection.getInputStream();

        return is;
    }

    /**
     * 获取excel单元值
     *
     * @param hssfCell
     * @return
     */
    @SuppressWarnings("static-access")
    public static String getValue(HSSFCell hssfCell) {
        if (hssfCell != null) {
            hssfCell.setCellType(Cell.CELL_TYPE_STRING);
            if (hssfCell.getCellType() == hssfCell.CELL_TYPE_BOOLEAN) {
                // 返回布尔类型的值
                return String.valueOf(hssfCell.getBooleanCellValue());
            } else if (hssfCell.getCellType() == hssfCell.CELL_TYPE_NUMERIC) {
                // 返回数值类型的值
                return String.valueOf(hssfCell.getNumericCellValue());
            } else {
                // 返回字符串类型的值
                return String.valueOf(hssfCell.getStringCellValue()).trim();
            }
        }
        return null;

    }
}
