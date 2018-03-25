package com.nuoplus.system.model;

import org.apache.commons.collections.map.HashedMap;

import java.util.Map;

/**
 * Created by Administrator on 2017/5/25.
 */
public class LeaveBean {
    private String processId;
    private String orderId;
    private String taskId;
    private String description;//请假理由
    private String startTime;
    private String endTime;
    private String day; //请假天数
    private String swt;// all 请全天  day 请白天（分院） night 请晚上（社区）
    private String dayTeacher;
    private String classess;

    private String tourGuide;
    private String supervisor;
    private String last;

    private String leaveId;

    public String getSwt() {
        return swt;
    }

    public void setSwt(String swt) {
        this.swt = swt;
    }

    public String getLeaveId() {
        return leaveId;
    }

    public void setLeaveId(String leaveId) {
        this.leaveId = leaveId;
    }

    public String getTourGuide() {
        return tourGuide;
    }

    public void setTourGuide(String tourGuide) {
        this.tourGuide = tourGuide;
    }

    public String getSupervisor() {
        return supervisor;
    }

    public void setSupervisor(String supervisor) {
        this.supervisor = supervisor;
    }

    public String getLast() {
        return last;
    }

    public void setLast(String last) {
        this.last = last;
    }

    public String getClassess() {
        return classess;
    }

    public void setClassess(String classess) {
        this.classess = classess;
    }

    public String getDayTeacher() {
        return dayTeacher;
    }

    public void setDayTeacher(String dayTeacher) {
        this.dayTeacher = dayTeacher;
    }

    public Map<String, Object> toMap() {
        Map<String, Object> map = new HashedMap();
        map.put("orderId", orderId);
        map.put("taskId", taskId);
        map.put("description", description);
        map.put("startTime", startTime);
        map.put("endTime", endTime);
        map.put("day", day);
        map.put("swt", swt);
        map.put("dayTeacher", dayTeacher);
        map.put("classess", classess);
        map.put("tourGuide", tourGuide);
        map.put("supervisor", supervisor);
        map.put("last", last);
        map.put("leaveId", leaveId);
        return map;
    }


    public String getProcessId() {
        return processId;
    }

    public void setProcessId(String processId) {
        this.processId = processId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getTaskId() {
        return taskId;
    }

    public void setTaskId(String taskId) {
        this.taskId = taskId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }
}
