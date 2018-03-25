package com.nuoplus.system.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 文件上传
 */
@Service
public class FileServiceImpl implements FileService {
    /**
     * 文件上传
     * @param request
     * @param result
     * @throws Exception
     */
    public void fileUpload(HttpServletRequest request,Map<String,Object> result)throws Exception{
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        String baseUrl = request.getRequestURL().substring(0,request.getRequestURL().indexOf("file/upload"));
        //创建一个通用的多部分解析器
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        //判断 request 是否有文件上传,即多部分请求
        List<String> pathList = new LinkedList<String>();
        if(multipartResolver.isMultipart(request)){
            //转换成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
            //取得request中的所有文件名
            Iterator<String> iter = multiRequest.getFileNames();
            while(iter.hasNext()){
                String name =  iter.next();
                result.put("name",name);
                //取得上传文件
                MultipartFile file = multiRequest.getFile(name);
                if(file != null){
                    //取得当前上传文件的文件名称
                    String myFileName = file.getOriginalFilename();
                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在
                    if(myFileName.trim() !=""){
                        System.out.println(myFileName);
                        //重命名上传后的文件名
                    /*    String fileName = file.getOriginalFilename();*/
                        String fileName = new SimpleDateFormat("yyyyMMddHHmmssSSSS").format(new Date())+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf('.'));
                        //定义上传路径
                        String datePath = simpleDateFormat.format(new Date());
                        String path = request.getServletContext().getRealPath("resources")+"/upload/"+ datePath + "/" + fileName;
                        File localFile = new File(path);
                        if(!localFile.exists()){
                            localFile.mkdirs();
                        }
                        file.transferTo(localFile);
                        StringBuffer fwPath = new StringBuffer();
                        fwPath.append("resources/upload/");
                        fwPath.append(datePath + "/");
                        fwPath.append(fileName);
                        pathList.add(fwPath.toString());
                    }
                }
            }

        }
        result.put("path",pathList);
        result.put("success",true);
    }

    @Override
    public void appFileUpload(HttpServletRequest request, Map<String, Object> result) throws Exception {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        //创建一个通用的多部分解析器
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        //判断 request 是否有文件上传,即多部分请求
        List<String> pathList = new LinkedList<String>();
        if(multipartResolver.isMultipart(request)){
            //转换成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
            //取得request中的所有文件名
            Iterator<String> iter = multiRequest.getFileNames();
            while(iter.hasNext()){
                String name =  iter.next();
                result.put("name",name);
                //取得上传文件
                MultipartFile file = multiRequest.getFile(name);
                if(file != null){
                    //取得当前上传文件的文件名称
                    String myFileName = file.getOriginalFilename();
                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在
                    if(myFileName.trim() !=""){
                        System.out.println(myFileName);
                        //重命名上传后的文件名
                    /*    String fileName = file.getOriginalFilename();*/
                        String fileName = new SimpleDateFormat("yyyyMMddHHmmssSSSS").format(new Date())+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf('.'));
                        //定义上传路径
                        String datePath = simpleDateFormat.format(new Date());
                        String path = request.getServletContext().getRealPath("resources")+"/upload/"+ datePath + "/" + fileName;
                        File localFile = new File(path);
                        if(!localFile.exists()){
                            localFile.mkdirs();
                        }
                        file.transferTo(localFile);
                        StringBuffer fwPath = new StringBuffer();
                        fwPath.append("resources/upload/");
                        fwPath.append(datePath + "/");
                        fwPath.append(fileName);
                        pathList.add(fwPath.toString());
                    }
                }
            }

        }
        result.put("path",pathList);
        result.put("success",true);
    }

    @Override
    public void appOrderFileUpload(HttpServletRequest request, Map<String, Object> result) throws Exception {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        //创建一个通用的多部分解析器
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        //判断 request 是否有文件上传,即多部分请求
        if(multipartResolver.isMultipart(request)){
            //转换成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
            //取得request中的所有文件名
            Iterator<String> iter = multiRequest.getFileNames();
            while(iter.hasNext()){
                String name =  iter.next();
                result.put("name",name);
                //取得上传文件
                MultipartFile file = multiRequest.getFile(name);
                if(file != null){
                    //取得当前上传文件的文件名称
                    String myFileName = file.getOriginalFilename();
                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在
                    if(myFileName.trim() !=""){
                        System.out.println(myFileName);
                        //重命名上传后的文件名
                    /*    String fileName = file.getOriginalFilename();*/

                        String fileName = new SimpleDateFormat("yyyyMMddHHmmssSSSS").format(new Date())+(new Random().nextInt(900000)+100000)+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf('.'));
                        //定义上传路径
                        String datePath = simpleDateFormat.format(new Date());
                        String path = request.getServletContext().getRealPath("resources")+"/upload/"+ datePath + "/" + fileName;
                        File localFile = new File(path);
                        if(!localFile.exists()){
                            localFile.mkdirs();
                        }
                        file.transferTo(localFile);
                        StringBuffer fwPath = new StringBuffer();
                        fwPath.append("resources/upload/");
                        fwPath.append(datePath + "/");
                        fwPath.append(fileName);
                        result.put(name,fwPath.toString());
                    }
                }
            }

        }
    }

}
