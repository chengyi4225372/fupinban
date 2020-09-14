<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/14
 * Time: 18:22
 */

namespace app\admin\controller;

/**
 * Class History
 * @package app\admin\controller
 * 历史回望新闻管理
 */
class History extends  AdminBase{

    /**
     * 列表页
     */
    public function index(){
        $list  = $this->logicHistory->getThisList();
        $this->assign('list',$list);
        return $this->fetch();
    }

    /**
     * @return mixed
     * 添加
     */
    public  function  add(){
        IS_POST && $this->jump($this->logicHistory->setThisArr($this->param));
        return $this->fetch();

    }

    /**
     * @return mixed
     * 编辑
     */
    public function edit(){
        IS_POST && $this->jump($this->logicHistory->updateThisArr($this->param));

        $info = $this->logicHistory->getThisVal($this->param['id']);
        $this->assign('info',$info);
        return $this->fetch();
    }

    /**
     * 删除
     */
    public function  del(){
        IS_GET && $this->jump($this->logicHistory->delThisVal($this->param['id']));
    }

    /**
     * 排序
     */
    public function setsort(){
        $this->jump($this->logicAdminBase->setSort('History',$this->param));
    }


}