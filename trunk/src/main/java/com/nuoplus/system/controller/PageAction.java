package com.nuoplus.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by daijiangping on 2018/2/28.
 */
@RequestMapping("page")
@Controller
public class PageAction {

    @RequestMapping("product_list")
    public String product_list() {
        return "static/list_product";
    }

    @RequestMapping("product_classify_list")
    public String product_classify_list() {
        return "static/list_product_classify";
    }

    @RequestMapping("cangku_list")
    public String cangku_list() {
        return "static/list_cangku";
    }

    @RequestMapping("list_gongys_classify")
    public String list_gongys_classify() {
        return "static/list_gongys_classify";
    }

    @RequestMapping("list_gongys")
    public String list_gongys() {
        return "static/list_gongys";
    }

    @RequestMapping("list_kehu_classify")
    public String list_kehu_classify() {
        return "static/list_kehu_classify";
    }

    @RequestMapping("list_zonghe")
    public String list_zonghe() {
        return "static/list_zonghe";
    }

    @RequestMapping("list_kehu")
    public String list_kehu() {
        return "static/list_kehu";
    }

    @RequestMapping("list_caigou_jinhuo")
    public String list_caigou_jinhuo() {
        return "static/list_caigou_jinhuo";
    }

    @RequestMapping("list_caigou_tuihuo")
    public String list_caigou_tuihuo() {
        return "static/list_caigou_tuihuo";
    }

    @RequestMapping("caigou_shenhe")
    public String caigou_shenhe() {
        return "static/caigou_shenhe";
    }

    @RequestMapping("caigou_shenqing")
    public String caigou_shenqing() {
        return "static/ruku/caigou_shenqing";
    }

    @RequestMapping("caigou_order_ruku")
    public String caigou_order_ruku() {
        return "static/caigou_order_ruku";
    }

    @RequestMapping("caigou_order_manage")
    public String caigou_order_manage() {
        return "static/ruku/caigou_order_manage";
    }

    @RequestMapping("caigou_jinhuo_order")
    public String caigou_jinhuo_order() {
        return "static/ruku/caigou_jinhuo_order";
    }

    @RequestMapping("select_order")
    public String select_order() {
        return "static/ruku/select_order";
    }

    @RequestMapping("list_jinhuo_order")
    public String list_jinhuo_order() {
        return "static/ruku/list_jinhuo_order";
    }

    @RequestMapping("zhineng_buhuo")
    public String zhineng_buhuo() {
        return "static/ruku/zhineng_buhuo";
    }

    @RequestMapping("caigou_tuihuo_shenqing")
    public String caigou_tuihuo_shenqing() {
        return "static/ruku/caigou_tuihuo_shenqing";
    }

    @RequestMapping("caigou_tuihuo_list")
    public String caigou_tuihuo_list() {
        return "static/ruku/caigou_tuihuo_list";
    }

    @RequestMapping("wuzhi_linyong")
    public String wuzhi_linyong() {
        return "static/chuku/wuzhi_linyong";
    }

    @RequestMapping("linyong_order_list")
    public String linyong_order_list() {
        return "static/chuku/linyong_order_list";
    }

    @RequestMapping("huowei_list")
    public String huowei_list() {
        return "static/basic/huowei_list";
    }

    @RequestMapping("wuzhi_tuiliao")
    public String wuzhi_tuiliao() {
        return "static/chuku/wuzhi_tuiliao";
    }

    @RequestMapping("tuiliao_order_list")
    public String tuiliao_order_list() {
        return "static/chuku/tuiliao_order_list";
    }

    @RequestMapping("cpkc")
    public String cpkc() {
        return "static/kucun/cpkc";
    }

    @RequestMapping("wuzhi_diaobo_order")
    public String wuzhi_diaobo_order() {
        return "static/kucun/wuzhi_diaobo_order";
    }

    @RequestMapping("wuzhi_diaobo_list")
    public String wuzhi_diaobo_list() {
        return "static/kucun/wuzhi_diaobo_list";
    }


    @RequestMapping("chanpin_liuxiang_list")
    public String chanpin_liuxiang_list() {
        return "static/kucun/chanpin_liuxiang_list";
    }

    @RequestMapping("kucun_baosun_list")
    public String kucun_baosun_list() {
        return "static/kucun/kucun_baosun_list";
    }

    @RequestMapping("kucun_baosun_order")
    public String kucun_baosun_order() {
        return "static/kucun/kucun_baosun_order";
    }

    @RequestMapping("kucun_baoyi_order")
    public String kucun_baoyi_order() {
        return "static/kucun/kucun_baoyi_order";
    }

    @RequestMapping("kucun_baoyi_list")
    public String kucun_baoyi_list() {
        return "static/kucun/kucun_baoyi_list";
    }

    @RequestMapping("kucun_pandian_order")
    public String kucun_pandian_order() {
        return "static/kucun/kucun_pandian_order";
    }

    @RequestMapping("kucun_pandian_list")
    public String kucun_pandian_list() {
        return "static/kucun/kucun_pandian_list";
    }

    @RequestMapping("chanpin_caifen_order")
    public String chanpin_caifen_order() {
        return "static/kucun/chanpin_caifen_order";
    }

    @RequestMapping("chanpin_caifen_list")
    public String chanpin_caifen_list() {
        return "static/kucun/chanpin_caifen_list";
    }

    @RequestMapping("chanpin_zuzhuang_order")
    public String chanpin_zuzhuang_order() {
        return "static/kucun/chanpin_zuzhuang_order";
    }

    @RequestMapping("chanpin_zuzhuang_list")
    public String chanpin_zuzhuang_list() {
        return "static/kucun/chanpin_zuzhuang_list";
    }

    @RequestMapping("bumen")
    public String bumen() {
        return "static/basic/bumen";
    }

    @RequestMapping("yuangon")
    public String yuangon() {
        return "static/basic/yuangon";
    }

    @RequestMapping("jsgl")
    public String jsgl() {
        return "static/quanxian/jsgl";
    }

    @RequestMapping("cdgl")
    public String cdgl() {
        return "static/quanxian/cdgl";
    }

    @RequestMapping("byjhbz")
    public String byjhbz() {
        return "static/baoyang/byjhbz";
    }

    @RequestMapping("jiiujian_ruku")
    public String jiiujian_ruku() {
        return "static/zoncheng/jiiujian_ruku";
    }

    @RequestMapping("jiiujian_ruku_list")
    public String jiiujian_ruku_list() {
        return "static/zoncheng/jiiujian_ruku_list";
    }

    @RequestMapping("weixiu_dengji")
    public String weixiu_dengji() {
        return "static/weixiu/weixiu_dengji";
    }

    @RequestMapping("weixiu_dengji_list")
    public String weixiu_dengji_list() {
        return "static/weixiu/weixiu_dengji_list";
    }

    @RequestMapping("byjhgl")
    public String byjhgl() {
        return "static/baoyang/byjhgl";
    }

    @RequestMapping("jiiujian_sonxiu")
    public String jiiujian_sonxiu() {
        return "static/weixiu/jiiujian_sonxiu";
    }

    @RequestMapping("weixiu_ribao")
    public String weixiu_ribao() {
        return "static/weixiu/weixiu_ribao";
    }

    @RequestMapping("weixiu_ribao_list")
    public String weixiu_ribao_list() {
        return "static/weixiu/weixiu_ribao_list";
    }

    @RequestMapping("qita_chuku")
    public String qita_chuku() {
        return "static/chuku/qita_chuku";
    }

    @RequestMapping("qita_chuku_list")
    public String qita_chuku_list() {
        return "static/chuku/qita_chuku_list";
    }

    @RequestMapping("cheliang_dangan")
    public String cheliang_dangan() {
        return "static/cheliang/cheliang_dangan";
    }

    @RequestMapping("add_cheliang")
    public String add_cheliang() {
        return "static/cheliang/add_cheliang";
    }

    @RequestMapping("cheliang_detail")
    public String cheliang_detail() {
        return "static/cheliang/cheliang_detail";
    }

    @RequestMapping("gongwc_dangan")
    public String gongwc_dangan() {
        return "static/cheliang/gongwc_dangan";
    }

    @RequestMapping("baofei_cheliang")
    public String baofei_cheliang() {
        return "static/cheliang/baofei_cheliang";
    }

    @RequestMapping("baofei_jihua")
    public String baofei_jihua() {
        return "static/cheliang/baofei_jihua";
    }

    @RequestMapping("baofei_daoqi")
    public String baofei_daoqi() {
        return "static/cheliang/baofei_daoqi";
    }

    @RequestMapping("baofei_jihua_list")
    public String baofei_jihua_list() {
        return "static/cheliang/baofei_jihua_list";
    }

    @RequestMapping("nianshen_jilu")
    public String nianshen_jilu() {
        return "static/cheliang/nianshen_jilu";
    }

    @RequestMapping("nianshen_daoqi")
    public String nianshen_daoqi() {
        return "static/cheliang/nianshen_daoqi";
    }

    @RequestMapping("luntai_guanli")
    public String luntai_guanli() {
        return "static/cheliang/luntai_guanli";
    }

    @RequestMapping("clwx")
    public String clwx() {
        return "static/weixiu/clwx";
    }

    @RequestMapping("wxdgl")
    public String wxdgl() {
        return "static/weixiu/wxdgl";
    }

    @RequestMapping("wxfy")
    public String wxfy() {
        return "static/weixiu/wxfy";
    }

    @RequestMapping("yiji_baoyang_tixin")
    public String yiji_baoyang_tixin() {
        return "static/weixiu/yiji_baoyang_tixin";
    }

    @RequestMapping("sanji_baoyang_tixin")
    public String sanji_baoyang_tixin() {
        return "static/weixiu/sanji_baoyang_tixin";
    }

    @RequestMapping("erji_baoyang_tixin")
    public String erji_baoyang_tixin() {
        return "static/weixiu/erji_baoyang_tixin";
    }

    @RequestMapping("clby")
    public String clby() {
        return "static/weixiu/clby";
    }

    @RequestMapping("jsyda")
    public String jsyda() {
        return "static/cheliang/jsyda";
    }

    @RequestMapping("bygl")
    public String bygl() {
        return "static/weixiu/bygl";
    }

    @RequestMapping("byglfl")
    public String byglfl() {
        return "static/weixiu/byglfl";
    }

    @RequestMapping("wbhcmx")
    public String wbhcmx() {
        return "static/weixiu/wbhcmx";
    }

    @RequestMapping("gys_yufukuan")
    public String gys_yufukuan() {
        return "static/caiwu/gys_yufukuan";
    }

    @RequestMapping("gyf_fukuan")
    public String gyf_fukuan() {
        return "static/caiwu/gyf_fukuan";
    }

    @RequestMapping("jtsgdj")
    public String jtsgdj() {
        return "static/shigu/jtsgdj";
    }

    @RequestMapping("jtsgdjb")
    public String jtsgdjb() {
        return "static/shigu/jtsgdjb";
    }

    @RequestMapping("cheliang_jiayoudengji")
    public String cheliang_jiayoudengji() {
        return "static/cheliang/cheliang_jiayoudengji";
    }

    @RequestMapping("xianlu_guanli")
    public String xianlu_guanli() {
        return "static/yewu/xianlu_guanli";
    }

    @RequestMapping("paiban_guangli")
    public String paiban_guangli() {
        return "static/yewu/paiban_guangli";
    }

    @RequestMapping("cheliang_biangen")
    public String cheliang_biangen() {
        return "static/cheliang/cheliang_biangen";
    }

    @RequestMapping("cheliang_shenming")
    public String cheliang_shenming() {
        return "static/cheliang/cheliang_shenming";
    }

    @RequestMapping("baoyang_leibie")
    public String baoyang_leibie() {
        return "static/baoyang/baoyang_leibie";
    }

    @RequestMapping("add_leibie")
    public String add_leibie() {
        return "static/baoyang/add_leibie";
    }

    @RequestMapping("baoyang_moban_peizhi")
    public String baoyang_moban_peizhi() {
        return "static/baoyang/baoyang_moban_peizhi";
    }

    @RequestMapping("baoyangjilu")
    public String baoyangjilu() {
        return "static/baoyang/baoyangjilu";
    }

    @RequestMapping("baoyang_jihua")
    public String baoyang_jihua() {
        return "static/baoyang/baoyang_jihua";
    }

    @RequestMapping("liucheng_guanli")
    public String liucheng_guanli() {
        return "static/liucheng/liucheng_guanli";
    }

    @RequestMapping("qiping_dangan")
    public String qiping_dangan() {
        return "static/qiping/qiping_dangan";
    }

    @RequestMapping("add_qiping")
    public String add_qiping() {
        return "static/qiping/add_qiping";
    }

    @RequestMapping("richang_jiance_jihua")
    public String richang_jiance_jihua() {
        return "static/qiping/richang_jiance_jihua";
    }

    @RequestMapping("richang_jiance_jilu")
    public String richang_jiance_jilu() {
        return "static/qiping/richang_jiance_jilu";
    }

    @RequestMapping("qiping_nianshen_jihua")
    public String qiping_nianshen_jihua() {
        return "static/qiping/qiping_nianshen_jihua";
    }

    @RequestMapping("qiping_nianshen_jilu")
    public String qiping_nianshen_jilu() {
        return "static/qiping/qiping_nianshen_jilu";
    }

    @RequestMapping("qiping_baofei")
    public String qiping_baofei() {
        return "static/qiping/qiping_baofei";
    }

    @RequestMapping("luntai_jiance_guize")
    public String luntai_jiance_guize() {
        return "static/luntai/luntai_jiance_guize";
    }

    @RequestMapping("luntai_dangan")
    public String luntai_dangan() {
        return "static/luntai/luntai_dangan";
    }

    @RequestMapping("luntai_jiance")
    public String luntai_jiance() {
        return "static/luntai/luntai_jiance";
    }

    @RequestMapping("luntai_jiance_jilu")
    public String luntai_jiance_jilu() {
        return "static/luntai/luntai_jiance_jilu";
    }

    @RequestMapping("luntai_baofei")
    public String luntai_baofei() {
        return "static/luntai/luntai_baofei";
    }

    @RequestMapping("luntai_genghuan")
    public String luntai_genghuan() {
        return "static/luntai/luntai_genghuan";
    }

    @RequestMapping("add_luntaigenghuan")
    public String add_luntaigenghuan() {
        return "static/luntai/add_luntaigenghuan";
    }

    @RequestMapping("jiance_genghuan_baobiao")
    public String jiance_genghuan_baobiao() {
        return "static/luntai/jiance_genghuan_baobiao";
    }

    @RequestMapping("weixiu_leibie")
    public String weixiu_leibie() {
        return "static/weixiu_jiben/weixiu_leibie";
    }

    @RequestMapping("chejian_xinxi")
    public String chejian_xinxi() {
        return "static/weixiu_jiben/chejian_xinxi";
    }

    @RequestMapping("weixiu_banzhu")
    public String chejiweixiu_banzhuan_xinxi() {
        return "static/weixiu_jiben/weixiu_banzhu";
    }

    @RequestMapping("weixiu_xiangmu")
    public String weixiu_xiangmu() {
        return "static/weixiu_jiben/weixiu_xiangmu";
    }

    @RequestMapping("weixiugong_xinxi")
    public String weixiugong_xinxi() {
        return "static/weixiu_jiben/weixiugong_xinxi";
    }

    @RequestMapping("baoxiu_guanli")
    public String baoxiu_guanli() {
        return "static/weixiu_baoyang/baoxiu_guanli";
    }

    @RequestMapping("baoxiu_detail")
    public String baoxiu_detail() {
        return "static/weixiu_baoyang/baoxiu_detail";
    }

    @RequestMapping("baoyang_guanli")
    public String baoyang_guanli() {
        return "static/weixiu_baoyang/baoyang_guanli";
    }

    @RequestMapping("baoyang_detail")
    public String baoyang_detail() {
        return "static/weixiu_baoyang/baoyang_detail";
    }

    @RequestMapping("fanxiu_guangli")
    public String fanxiu_guangli() {
        return "static/weixiu_baoyang/fanxiu_guangli";
    }

    @RequestMapping("waiwei_guangli")
    public String waiwei_guangli() {
        return "static/weixiu_baoyang/waiwei_guangli";
    }

    @RequestMapping("peijian_baofei")
    public String peijian_baofei() {
        return "static/weixiu_baoyang/peijian_baofei";
    }

    @RequestMapping("fanxiu_tongji")
    public String fanxiu_tongji() {
        return "static/weixiu_baoyang/fanxiu_tongji";
    }

    @RequestMapping("weixiugongshi_huizon")
    public String weixiugongshi_huizon() {
        return "static/weixiu_baoyang/weixiugongshi_huizon";
    }

    @RequestMapping("hetong_guanli")
    public String hetong_guanli() {
        return "static/hetong/hetong_guanli";
    }

    @RequestMapping("jichadengji")
    public String jichadengji() {
        return "static/jicha/jichadengji";
    }

    @RequestMapping("jichaheshi")
    public String jichaheshi() {
        return "static/jicha/jichaheshi";
    }

    @RequestMapping("jichachuli")
    public String jichachuli() {
        return "static/jicha/jichachuli";
    }

    @RequestMapping("weigui_jilu")
    public String weigui_jilu() {
        return "static/jicha/weigui_jilu";
    }

    @RequestMapping("weixiu_tongzhidan")
    public String weixiu_tongzhidan() {
        return "static/shigu/weixiu_tongzhidan";
    }
}
