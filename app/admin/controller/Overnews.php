<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 10:38
 */

namespace app\admin\controller;

/**
 * Class Overnews
 * @package app\admin\controller
 * 综述管理新闻控制器
 */

class Overnews extends  AdminBase{

    /**
     * 新闻管理列表
     */
    public function index(){
        $where = $this->logicOvernews->getWhere($this->param);
        $list  = $this->logicOvernews->getThisList($where);
        $this->assign('list',$list);
        return $this->fetch();
    }

    /**
     * 添加
     */
    public function add(){
        IS_POST && $this->jump($this->logicOvernews->setThisArr($this->param));

        $cates = $this->logicOverviewCates->getThisList('');
        $this->assign('cates',$cates);
        return $this->fetch();
    }

    /**
     * 编辑
     */
    public function edit(){
        IS_POST && $this->jump($this->logicOvernews->editThisArr($this->param));

        $info = $this->logicOvernews->getIdInfo($this->param);
        $cates = $this->logicOverviewCates->getThisList('');
        $this->assign('cates',$cates);
        $this->assign('info',$info);
        return $this->fetch();
    }

    /**
     * 删除
     */
    public function del(){
        IS_GET && $this->jump($this->logicOvernews->delThisInfo($this->param));
    }

    /**
     * 排序
     */
    public function setSort(){
        $this->jump($this->logicAdminBase->setSort('Overnews', $this->param));
    }


}