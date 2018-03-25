package com.nuoplus.system.controller;

import com.nuoplus.system.utils.Data;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by daijiangping on 2018/2/28.
 */
@RequestMapping("data")
@Controller
public class DataAction {
    /**
     * 产品列表
     *
     * @return
     */
    @RequestMapping("productList")
    @ResponseBody
    public Map<String, Object> method() {
        Map<String, Object> rs = new HashMap<>(4);
        try {
            rs = Data.getProductList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 产品列表
     *
     * @return
     */
    @RequestMapping("AllProductList")
    @ResponseBody
    public Map<String, Object> AllProductList() {
        Map<String, Object> rs = new HashMap<>(4);
        try {
            rs = Data.AllProductList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 产品列表
     *
     * @return
     */
    @RequestMapping("AllWzProductList")
    @ResponseBody
    public Map<String, Object> AllWzProductList() {
        Map<String, Object> rs = new HashMap<>(4);
        try {
            rs = Data.AllWzProductList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 采购订单列表
     *
     * @return
     */
    @RequestMapping("caigouOrderList")
    @ResponseBody
    public Map<String, Object> caigouOrderList() {
        Map<String, Object> rs = new HashMap<>(4);
        try {
            rs = Data.getCaigouOrderList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 左连接查询产品列表
     *
     * @return
     */
    @RequestMapping("selectProduct")
    @ResponseBody
    public Map<String, Object> selectProduct() {
        Map<String, Object> rs = new HashMap<>(4);
        try {
            rs = Data.selectProduct();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 左连接查询产品列表
     *
     * @return
     */
    @RequestMapping("zhinengbuhuo")
    @ResponseBody
    public Map<String, Object> zhinengbuhuo() {
        Map<String, Object> rs = new HashMap<>(4);
        try {

            rs = Data.zhinengbuhuo();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 调拨列表
     *
     * @return
     */
    @RequestMapping("diaoboList")
    @ResponseBody
    public Map<String, Object> diaoboList() {
        Map<String, Object> rs = new HashMap<>(4);
        try {

            rs = Data.diaoboList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 产品流向列表
     *
     * @return
     */
    @RequestMapping("liuxiangList")
    @ResponseBody
    public Map<String, Object> liuxiangList() {
        Map<String, Object> rs = new HashMap<>(4);
        try {
            rs = Data.liuxiangList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 产品流向列表
     *
     * @return
     */
    @RequestMapping("cheliangList")
    @ResponseBody
    public Map<String, Object> cheliangList() {
        Map<String, Object> rs = new HashMap<>(4);
        try {
            rs = Data.cheliangList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }
    /**
     * 产品流向列表
     *
     * @return
     */
    @RequestMapping("cheliangList1")
    @ResponseBody
    public Map<String, Object> cheliangList1() {
        Map<String, Object> rs = new HashMap<>(4);
        try {
            rs = Data.cheliangList1();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 产品流向列表
     *
     * @return
     */
    @RequestMapping("AllFenLeiList")
    @ResponseBody
    public Map<String, Object> AllFenLeiList() {
        Map<String, Object> rs = new HashMap<>(4);
        try {
            rs = Data.AllFenLeiList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 产品流向列表
     *
     * @return
     */
    @RequestMapping("gysList")
    @ResponseBody
    public Map<String, Object> gysList() {
        Map<String, Object> rs = new HashMap<>(4);
        try {
            rs = Data.gysList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }


}
