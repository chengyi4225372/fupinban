<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 14:26
 */

namespace app\admin\controller;

/**
 * Class Person
 * @package app\admin\controller
 * 先进个人控制器
 */

class Person  extends  AdminBase{

    /**
     * 先进个人列表
     */
    public function  index(){
        $where = $this->logicGloryPerson->getWhere($this->param);
        $list  = $this->logicGloryPerson->getThisList($where);
        $this->assign('list',$list);
        return $this->fetch();
    }

    /*
     * 添加
     */
    public function add(){
        IS_POST && $this->jump($this->logicGloryPerson->setThisVal($this->param));

        return $this->fetch();
    }

    /**
     * 编辑
     */
    public function edit(){
        IS_POST && $this->jump($this->logicGloryPerson->updateThisVal($this->param));

        $info = $this->logicGloryPerson->getThisInfo($this->param['id']);
        $this->assign('info',$info);
        return $this->fetch();
    }


    /**
     * 删除
     */
    public  function del(){
      IS_GET && $this->jump($this->logicGloryPerson->delThisVal($this->param['id']));
    }

    /**
     * 排序
     */
     public function setsort(){
         $this->jump($this->logicAdminBase->setSort('GloryPerson', $this->param));
     }


}