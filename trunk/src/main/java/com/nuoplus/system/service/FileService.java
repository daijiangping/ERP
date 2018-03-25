package com.nuoplus.system.service;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * 文件上传
 */
public interface FileService {
    /**
     * 文件上传
     * @param request
     * @param result
     * @throws Exception
     */
    void fileUpload(HttpServletRequest request, Map<String, Object> result)throws Exception;

    void appFileUpload(HttpServletRequest request, Map<String, Object> result)throws Exception;

    void appOrderFileUpload(HttpServletRequest request, Map<String, Object> result)throws Exception;
}
