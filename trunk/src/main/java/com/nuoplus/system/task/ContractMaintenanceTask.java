package com.nuoplus.system.task;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/12/21 0021.
 */
@Component
public class ContractMaintenanceTask {

/*    @Resource
    ContractMaintenanceTimeService contractMaintenanceTimeService;
    @Resource
    RepairOrderService repairOrderService;

  *//* @Scheduled(cron = "0/5 * * * * ?") // 间隔5秒执行*//*
   @Scheduled(cron = "0 0 0 * * ?")
    public void taskCycle() {
        String todayDate=new SimpleDateFormat("yyyy-MM-dd").format(new Date());
      //  ContractMaintenanceTimeService contractMaintenanceTimeService =SpringUtils.getBean("contractMaintenanceTimeService");
        if (null==contractMaintenanceTimeService){
            System.out.println("没有注入进来");
        }else {
            List<ContractMaintenanceTime> list = contractMaintenanceTimeService.selectTodyMaintenanceTime(todayDate);
            if (!list.isEmpty()) {
                    try {
                        repairOrderService.createContractMaintenance(list);
                          *//* System.out.println( new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())+ "★★★★★★★★★★★" + " 开始生成维保订单" );*//*
                        System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())+ "★★★★★★★★★★★" + " 开始生成维保订单 "+"维保合同编号：");

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
            } else {
                System.out.println("当前时间不在维保合同内");
            }
        }
    }*/
}
