/*
 *  Copyright 2014-2015 snakerflow.com
 *  *
 *  * Licensed under the Apache License, Version 2.0 (the "License");
 *  * you may not use this file except in compliance with the License.
 *  * You may obtain a copy of the License at
 *  *
 *  *     http://www.apache.org/licenses/LICENSE-2.0
 *  *
 *  * Unless required by applicable law or agreed to in writing, software
 *  * distributed under the License is distributed on an "AS IS" BASIS,
 *  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  * See the License for the specific language governing permissions and
 *  * limitations under the License.
 *
 */
package com.nuoplus.system.utils;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.lang.StringUtils;
import org.joda.time.DateTime;

import java.util.*;

/**
 * 
 * @author yuqs
 * @since 0.1
 */
public class DateUtils {
	private static final String DATE_FORMAT_DEFAULT = "yyyy-MM-dd HH:mm:ss";
	private static final String DATE_FORMAT_YMD = "yyyy-MM-dd";
	
	public static String getCurrentTime() {
		return new DateTime().toString(DATE_FORMAT_DEFAULT);
	}
	
	public static String getCurrentDay() {
		return new DateTime().toString(DATE_FORMAT_YMD);
	}

	public static class ConvertUtils {

        static {
            registerDateConverter();
        }

        /**
         * 提取集合中的对象的属性(通过getter函数), 组合成List.
         *
         * @param collection 来源集合.
         * @param propertyName 要提取的属性名.
         */
        @SuppressWarnings("unchecked")
        public static List convertElementPropertyToList(final Collection collection, final String propertyName) {
            List list = new ArrayList();

            try {
                for (Object obj : collection) {
                    list.add(PropertyUtils.getProperty(obj, propertyName));
                }
            } catch (Exception e) {

            }

            return list;
        }

        /**
         * 提取集合中的对象的属性(通过getter函数), 组合成由分割符分隔的字符串.
         *
         * @param collection 来源集合.
         * @param propertyName 要提取的属性名.
         * @param separator 分隔符.
         */
        @SuppressWarnings("unchecked")
        public static String convertElementPropertyToString(final Collection collection, final String propertyName,
                final String separator) {
            List list = convertElementPropertyToList(collection, propertyName);
            return StringUtils.join(list, separator);
        }

        /**
         * 转换字符串到相应类型.
         *
         * @param value 待转换的字符串.
         * @param toType 转换目标类型.
         */
        public static Object convertStringToObject(String value, Class<?> toType) {
                return org.apache.commons.beanutils.ConvertUtils.convert(value, toType);
        }

        /**
         * 定义日期Converter的格式: yyyy-MM-dd 或 yyyy-MM-dd HH:mm:ss
         */
        private static void registerDateConverter() {
            DateConverter dc = new DateConverter();
            dc.setUseLocaleFormat(true);
            dc.setPatterns(new String[] { "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss" });
            org.apache.commons.beanutils.ConvertUtils.register(dc, Date.class);
        }


        /**
         * 转换Map<String, String>到Map<String, Object>
         *
         * @param map
         * @return
         */
        public static Map<String, Object> convertMapString2Object(Map<String, String> map) {
            Map<String, Object> result = new HashMap<String, Object>();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                result.put(entry.getKey(), entry.getValue());
            }
            return result;
        }

        /**
         * 转换List<Map<String, String>>到List<Map<String, Object>>
         *
         * @param lists
         * @return
         */
        public static List<Map<String, Object>> convertListString2Object(List<Map<String, String>> lists) {
            List<Map<String, Object>> results = new ArrayList<Map<String, Object>>();
            for (Map<String, String> map : lists) {
                results.add(convertMapString2Object(map));
            }
            return results;
        }

        /**
         * Map<String, Object> TO Map<String, String>
         *
         * @param map
         * @return
         */
        public static Map<String, String> convertMapObject2String(Map<String, Object> map) {
            Map<String, String> result = new HashMap<String, String>();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                result.put(entry.getKey(), (String) entry.getValue());
            }
            return result;
        }

        /**
         * List<Map<String, Object>> TO List<Map<String, String>>
         *
         * @param lists
         * @return
         */
        public static List<Map<String, String>> convertListObject2String(List<Map<String, Object>> lists) {
            List<Map<String, String>> results = new ArrayList<Map<String, String>>();
            for (Map<String, Object> map : lists) {
                results.add(convertMapObject2String(map));
            }
            return results;
        }

        /**
         * 将json转化为实体POJO
         * @param jsonStr
         * @param obj
         * @return
         */
        public static<T> Object JSONToObj(String jsonStr,Class<T> obj) {
            T t = null;
            try {
                ObjectMapper objectMapper = new ObjectMapper();
                t = objectMapper.readValue(jsonStr,
                        obj);
            } catch (Exception e) {
                t=null;
            }
            return t;
        }

        /**
         * 将实体POJO转化为JSON
         * @param obj
         * @return
         */
        public static<T> String objectToJson(T obj) {
            ObjectMapper mapper = new ObjectMapper();
            String jsonStr = "";
            try {
                jsonStr =  mapper.writeValueAsString(obj);
            } catch (Exception e) {
                jsonStr ="";
            }
            return jsonStr;
        }


    }
}
