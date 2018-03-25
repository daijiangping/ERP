package com.nuoplus.system.utils;

import org.apache.commons.collections.map.HashedMap;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by daijiangping on 2018/3/4.
 */
public class Data {

    public static Map<String, Object> getProductList() {
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);
        rs.put("data", list());
        return rs;
    }

    public static Map<String, Object> getCaigouOrderList() {
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);
        rs.put("data", orderlist());
        return rs;
    }

    public static List<Map<String, Object>> list() {
        List<Map<String, Object>> rs = new ArrayList<>();

        Map<String, Object> m1 = new HashMap<>(16);
        m1.put("no", "CP00223021");
        m1.put("name", "雨刮器");
        m1.put("xh", "大众");
        m1.put("dw", "副");
        m1.put("guig", "1LX5TC");
        m1.put("color", "黑色");
        m1.put("pinpai", "interweb");
        m1.put("sl", "20");
        m1.put("danjia", "500.00");
        m1.put("jine", "10000.00");
        m1.put("ck", "西安仓库");
        m1.put("ckhw", "00253");
        m1.put("xykc", "47");
        m1.put("wwc", "5");
        m1.put("ywc", "1");
        m1.put("yqx", "0");
        m1.put("pici", "201709批次");
        rs.add(m1);



        return rs;

    }

    public static List<Map<String, Object>> orderlist() {
        List<Map<String, Object>> rs = new ArrayList<>();

        Map<String, Object> m1 = new HashMap<>(16);
        m1.put("no", "CP00223021");
        m1.put("订货日期", "2017-12-10");
        m1.put("送货日期", "2018-01-52");
        m1.put("供应商", "北京第一供应商");
        m1.put("应付金额", "200.20");
        m1.put("预付定金", "50.00");
        m1.put("制单", "采购员");
        m1.put("经手人", "代江平");
        m1.put("审核", "待审核");
        m1.put("进度", "未完");
        m1.put("wwc", "5");
        m1.put("ywc", "0");
        m1.put("yqx", "2");
        rs.add(m1);

        Map<String, Object> m2 = new HashMap<>(16);
        m2.put("no", "CP00223022");
        m2.put("订货日期", "2017-12-11");
        m2.put("送货日期", "2018-01-01");
        m2.put("供应商", "北京第二供应商");
        m2.put("应付金额", "300.20");
        m2.put("预付定金", "200.00");
        m2.put("制单", "采购员");
        m2.put("经手人", "代江平");
        m2.put("审核", "待审核");
        m2.put("进度", " <span style='color:red'>已结单</span>  ");

        rs.add(m2);

        Map<String, Object> m3 = new HashMap<>(16);
        m3.put("no", "CP00223021");
        m3.put("订货日期", "2017-12-10");
        m3.put("送货日期", "2018-01-52");
        m3.put("供应商", "北京第一供应商");
        m3.put("应付金额", "200.20");
        m3.put("预付定金", "50.00");
        m3.put("制单", "采购员");
        m3.put("经手人", "代江平");
        m3.put("审核", "待审核");
        m3.put("进度", "未完");

        rs.add(m3);
        rs.add(m3);
        rs.add(m3);
        rs.add(m3);
        rs.add(m3);
        rs.add(m3);

        Map<String, Object> m4 = new HashMap<>(16);
        m4.put("no", "CP00223021");
        m4.put("订货日期", "2017-12-10");
        m4.put("送货日期", "2018-01-52");
        m4.put("供应商", "北京第一供应商");
        m4.put("应付金额", "200.20");
        m4.put("预付定金", "50.00");
        m4.put("制单", "采购员");
        m4.put("经手人", "代江平");
        m4.put("审核", "待审核");
        m4.put("进度", "未完");

        rs.add(m4);

        Map<String, Object> m5 = new HashMap<>(16);
        m5.put("no", "CP00223021");
        m5.put("订货日期", "2017-12-10");
        m5.put("送货日期", "2018-01-52");
        m5.put("供应商", "北京第一供应商");
        m5.put("应付金额", "200.20");
        m5.put("预付定金", "50.00");
        m5.put("制单", "采购员");
        m5.put("经手人", "代江平");
        m5.put("审核", "待审核");
        m5.put("进度", "未完");

        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);
        rs.add(m5);

        return rs;

    }

    public static Map<String, Object> selectProduct() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);

        Map<String, Object> m = new HashMap<>(16);
        m.put("no", "CP00223021");
        m.put("订货日期", "2017-12-10");
        m.put("送货日期", "2018-01-52");
        m.put("供应商", "北京第一供应商");
        m.put("自定义单号", "ZDY5522302");
        m.put("经手人", "代江平");
        m.put("产品编号", "002013");
        m.put("条码", "HNBGDSSDFG");
        m.put("名称", "手柄");
        m.put("单位", "套");
        m.put("规格", "小型");
        m.put("颜色", "彩色");
        m.put("品牌", "华西韩");
        m.put("数量", "10");
        m.put("已完成", "2");
        m.put("单价", "20");
        m.put("金额", "200.00");
        for (int i = 0; i < 10; i++) {
            list.add(m);
        }

        rs.put("data", list);
        return rs;
    }

    public static Map<String, Object> zhinengbuhuo() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);

        Map<String, Object> m = new HashMap<>(16);
        m.put("商品", "轮胎内胆");
        m.put("属性", "AAAD");
        m.put("单位", "个");
        m.put("当前库存", "1");
        m.put("采购在定量", "2");
        m.put("最低库存", "20");
        m.put("建议采购量", "17");


        for (int i = 0; i < 1; i++) {
            list.add(m);
        }

        rs.put("data", list);
        return rs;
    }

    public static Map<String, Object> AllProductList() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);

        Map<String, Object> m = new HashMap<>(16);


        for (int i = 0; i < 100; i++) {
            m = new HashMap<>(16);
            m.put("no", "0021");
            m.put("ck", "集团六盘水分仓");
            m.put("hw", "00#24" + i + "号");
            m.put("lb", "车内饰");
            m.put("bh", "0021" + i);
            m.put("name", "后视镜");
            m.put("pym", "zuoqian");
            m.put("txm", "00213" + i);
            m.put("dw", "个");
            m.put("guig", "小型");
            m.put("color", "红色");
            m.put("pinpai", "ABility");
            m.put("kcsl", "152");
            m.put("cgsl", "20");
            m.put("ddyj", "2");
            m.put("danjia", "200.00");
            m.put("jine", "200.00");
            m.put("gysflmc", (i + 1) + "级");
            m.put("pc", "2016第" + i + "批");
            list.add(m);

        }

        rs.put("data", list);
        return rs;
    }

    public static Map<String, Object> diaoboList() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);

        Map<String, Object> m = new HashMap<>(16);
/**
 *    , {field: 'djbh', title: '单据编号', sort: true,}
 , {field: 'dbrq', title: '调拨日期', sort: true,}
 , {field: 'dblx', title: '调拨类型', sort: true,}
 , {field: 'dbbm', title: '调拨部门 ', sort: true,}
 , {field: 'zd', title: '制单 ', sort: true,}
 , {field: 'jsr', title: '经手人 ', sort: true,}
 , {field: 'sh', title: '审核 ', sort: true,}
 , {field: 'bz', title: '备注', sort: true,}
 */

        for (int i = 0; i < 100; i++) {
            m = new HashMap<>(16);
            m.put("djbh", (Math.random() * 894 + "").replace("\\.", ""));
            m.put("dbrq", "2017-10-25");
            m.put("dblx", "同价调拨");
            m.put("dbbm", "采购部门");
            m.put("zd", "管理员" + i);
            m.put("jsr", "经手人" + i);
            m.put("sh", "待审核");
            m.put("bz", "测试" + i);


            m.put("cph", "蒙A552352");
            m.put("ltxh", "SD00251");
            m.put("chehao", "002011");
            m.put("ydsj", "2017-01-01");
            m.put("s3h", "现状");
            m.put("sh", "待审核");
            m.put("wz", "左前");
            m.put("bz", "测试数据");
            list.add(m);

        }

        rs.put("data", list);
        return rs;
    }

    public static Map<String, Object> liuxiangList() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);

        Map<String, Object> m = new HashMap<>(16);
        /**
         *   , {field: 'lx', title: '类型', sort: true,}
         , {field: 'djbh', title: '单据编号', sort: true,}
         , {field: 'shrq', title: '所属仓库', sort: true,}
         , {field: 'hw', title: '货位', sort: true,}
         , {field: 'fsrq', title: '发生日期', sort: true,}
         , {field: 'cpbh', title: '产品编号', sort: true,}
         , {field: 'tm', title: '条码', sort: true,}
         , {field: 'cpmc', title: '产品名称', sort: true,}
         , {field: 'dw', title: '单位', sort: true,}
         , {field: 'gg', title: '规格', sort: true,}
         , {field: 'ys', title: '颜色', sort: true,}
         , {field: 'pp', title: '品牌', sort: true,}
         , {field: 'pc', title: '批次', sort: true,}
         , {field: 'sl', title: '数量', sort: true,}
         , {field: 'dj', title: '单价', sort: true,}
         , {field: 'je', title: '金额', sort: true,}
         */
        for (int i = 0; i < 100; i++) {
            m = new HashMap<>(16);
            if (i % 2 == 0) {
                m.put("lx", "调出");
            } else if (i % 3 == 0) {
                m.put("lx", "调入");
            } else if (i % 4 == 0) {
                m.put("lx", "采购进货");
            } else if (i % 5 == 0) {
                m.put("lx", "期初库存");
            } else {
                m.put("lx", "领用");
            }
            m.put("djbh", "856232321");
            m.put("shrq", "南陵仓库");
            m.put("hw", "货位" + i + "号");
            m.put("fsrq", "20" + (i + 10) + "/12/10");
            m.put("cpbh", "0025");
            m.put("tm", "ASGH5525");
            m.put("cpmc", "汽车香水");
            m.put("dw", "瓶");
            m.put("gg", "1L");
            m.put("pp", "YSLE");
            m.put("pc", "0601P");
            m.put("sl", "200");
            m.put("dj", "500");
            m.put("je", "200");
            list.add(m);

        }

        rs.put("data", list);
        return rs;
    }

    public static Map<String, Object> AllWzProductList() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);

        Map<String, Object> m = new HashMap<>(16);


        for (int i = 0; i < 100; i++) {
            m = new HashMap<>(16);
            m.put("hw2", "WZ00" + i);
            m.put("pc3", i + "号轮胎");
            m.put("pym", "GXNLT");
            m.put("txm", "T00" + i);
            m.put("jbfz", "个/车");
            m.put("guig", "185/70R1486H");
            m.put("dw", "个");
            m.put("guig", "小型");
            m.put("color", "黑");
            m.put("pinpai", "玛吉斯");
            m.put("mrgys", "广州东埠橡胶轮胎有限公司");
            m.put("fenlei", "轮胎类");
            m.put("leibie", "成品");
            m.put("ddyj", "2");
            m.put("danjia", "200.00");
            m.put("jine", "200.00");
            m.put("cgzt", "2");
            m.put("stop", "否");
            m.put("sx", "200");
            m.put("xx", "10");
            list.add(m);

        }

        rs.put("data", list);
        return rs;
    }

    public static Map<String, Object> cheliangList() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);

        Map<String, Object> m = new HashMap<>(16);

        /**

         */
        for (int i = 0; i < 100; i++) {
            m = new HashMap<>(16);
            m.put("lx", "客车");
            m.put("djbh", "陕A000" + i);
            m.put("shrq", "AB" + i);
            m.put("hw", "52230XH");
            m.put("fsrq", "10m*5m*4m");
            m.put("guig", "185/70R1486H");
            m.put("cpbh", "5421");
            m.put("sylb", "载客");
            m.put("dj", "空调车");
            m.put("rlzl", "汽油");
            m.put("zt", "正常");
            m.put("pfbz", "5L");
            m.put("zks", "50人");
            m.put("fdjh", "GW4G15");
            m.put("sylx", "公务车");
            m.put("gps", "电子设备");
            m.put("bfrq", "2017-12-15");
            m.put("hscl", "已回收");


            m.put("cx", "大客普");
            m.put("xl", "706");
            m.put("zylb", "维修");
            m.put("kgsj", "2018-02-02");
            m.put("wgsj", "2018-03-02");
            m.put("zyy", "Vincesin");
            m.put("gsf", "200");
            m.put("pjf", "5000");
            m.put("zje", "5200.00");
            m.put("xlc", "杜城村汽车修理厂");
            m.put("qssj", "2017-10-12");
            m.put("jzrq", "2019-10-12");
            m.put("fsdd", "丈八东路南段");
            m.put("cph", "陕A455GF");
            m.put("jsy", "张国立");
            m.put("dabh", "AB000" + i);


            list.add(m);

        }

        rs.put("data", list);
        return rs;
    }

    public static Map<String, Object> cheliangList1() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);

        Map<String, Object> m = new HashMap<>(16);


        for (int i = 0; i < 3; i++) {
            m = new HashMap<>(16);
            list.add(m);

        }

        rs.put("data", list);
        return rs;
    }

    public static Map<String, Object> AllFenLeiList() {

        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);


        Map<String, Object> m = new HashMap<>(16);
        m.put("bh", "001");
        m.put("flmc", "包围");
        m.put("sjfl", "车内饰&外饰件");
        m.put("flms", "");
        m.put("lcmc", "采购单申请流程");
        m.put("lcms", "采购单申请流程");
        m.put("lczt", "启用");
        m.put("lcbb", "1.0.0.0");
        list.add(m);

        m = new HashedMap();
        m.put("bh", "002");
        m.put("flmc", "车顶架");
        m.put("sjfl", "车内饰&外饰件");
        m.put("flms", "");
        list.add(m);

        m = new HashedMap();
        m.put("bh", "003");
        m.put("flmc", "车用窗帘");
        m.put("sjfl", "车内饰&外饰件");
        m.put("flms", "");
        list.add(m);

        m = new HashedMap();
        m.put("bh", "004");
        m.put("flmc", "车罩");
        m.put("sjfl", "车内饰&外饰件");
        m.put("flms", "无");
        list.add(m);

        m = new HashedMap();
        m.put("bh", "005");
        m.put("flmc", "导流板");
        m.put("sjfl", "车内饰&外饰件");
        m.put("flms", "");
        list.add(m);

        m = new HashedMap();
        m.put("bh", "006");
        m.put("flmc", "地胶");
        m.put("sjfl", "车内饰&外饰件");
        m.put("flms", "无");
        list.add(m);

        m = new HashedMap();
        m.put("bh", "007");
        m.put("flmc", "汽车香水");
        m.put("sjfl", "车内饰&外饰件");
        m.put("flms", "多品牌");
        list.add(m);

        m = new HashedMap();
        m.put("bh", "008");
        m.put("flmc", "行李架");
        m.put("sjfl", "车内饰&外饰件");
        m.put("flms", "汽车行李架分类");

        list.add(m);



        rs.put("data", list);
        return rs;

    }

    public static Map<String, Object> gysList() {

        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> rs = new HashMap<>(16);
        rs.put("code", 0);
        rs.put("count", 10000);


        Map<String, Object> m = new HashMap<>(16);
        m.put("gys", "深圳市配件生产制造商");
        m.put("gsmc", "深圳生产制造公司");
        m.put("lxr", "周先生");
        m.put("lxdh", "13571865524");
        m.put("qy", "深圳");
        m.put("A级", "lb");
        m.put("dz", "深圳天道计然金融服务有限公司");
        m.put("cz", "000-22522");
        m.put("yx", "9846523@163.com");
        m.put("wz", "http://www.fast.com/");
        m.put("pxm", "4");
        m.put("dh", "17868802552");
        m.put("jylx", "现结");
        list.add(m);


        rs.put("data", list);
        return rs;
    }
}
