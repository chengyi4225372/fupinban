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
   protected $type = ['1'=>'殷殷嘱咐','2'=>'领导关怀'];

    /**
     * 新闻管理列表
     */
    public function index(){
        $where = $this->logicOvernews->getWhere($this->param);
        $list  = $this->logicOvernews->getThisList($where);
        $this->assign('list',$list);
        $this->assign('type',$this->type);
        return $this->fetch();
    }

    /**
     * 添加
     */
    public function add(){
        IS_POST && $this->jump($this->logicOvernews->setThisArr($this->param));

        return $this->fetch();
    }

    /**
     * 编辑+
     */
    public function edit(){
        IS_POST && $this->jump($this->logicOvernews->editThisArr($this->param));

        $info = $this->logicOvernews->getIdInfo($this->param['id']);
        $this->assign('info',$info);
        return $this->fetch();
    }

    /**
     * 删除
     */
    public function del(){
        IS_GET && $this->jump($this->logicOvernews->delThisInfo($this->param['id']));
    }

    /**
     * 排序
     */
    public function setsort(){
        $this->jump($this->logicAdminBase->setSort('Overnews', $this->param));
    }


}