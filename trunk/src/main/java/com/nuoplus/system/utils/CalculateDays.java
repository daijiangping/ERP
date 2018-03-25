package com.nuoplus.system.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017/5/23.
 * 请假层级
 */
public class CalculateDays {

    /**
     * 计算社区请假层级，请假时间 : day < 3 ——————导员审批
     *                           day <= 5——————主管审批
     *                           day > 5 ——————总审批
     * @param startTime 开始时间
     * @param endTime   结束时间
     * @return 导员审批：3    主管审批：5   总审批：30
     */
    public static Integer getCell(String startTime, String endTime) {
        SimpleDateFormat myFormatter;
        int cell = 3;

        try {
            myFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = myFormatter.parse(startTime);
            Date mydate = myFormatter.parse(endTime);
            long day = (mydate.getTime() - date.getTime()) / (24 * 60 * 60 * 1000);
            cell = Integer.parseInt(day+"");
            if (cell > 30) cell = 30;
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return cell;
    }

    public static void main(String[] args) {
        int cell = CalculateDays.getCell("2017-05-06 12:00:00", "2017-05-18 12:00:00");
        System.out.println(cell);
    }
}
