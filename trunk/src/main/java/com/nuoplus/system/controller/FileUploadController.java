package com.nuoplus.system.controller;

import com.nuoplus.system.service.FileService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Author: zhangxw
 * Date:   2017/5-23
 * Time:   9:42
 */
@Controller
@RequestMapping("file")
public class FileUploadController {
    @Resource
    FileService fileService;

    @RequestMapping("upload")
    @ResponseBody
    public Map<String,Object> upload(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> result = new HashMap<String,Object>();
        try {
            fileService.fileUpload(request,result);
        }catch (Exception e){
            result.put("success",false);
            e.printStackTrace();
        }
        return result;
    }
}
