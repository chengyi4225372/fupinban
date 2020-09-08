<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 16:45
 */
namespace app\admin\controller;

/**
 * Class Deedslog
 * @package app\admin\controller
 * 扶贫日子 控制器
 */
class Deedslog extends AdminBase{

    /**
     * 列表
     */
    public function index(){
        $where =  $this->logicDeedsLog->getWhere($this->param);
        $list  =  $this->logicDeedsLog->getThisList($where);

        $this->assign('list',$list);
        return $this->fetch();
    }


    /**
     * 添加
     */
     public function add(){
         IS_POST && $this->jump($this->logicDeedsLog->setThisArr($this->param));

         return $this->fetch();
     }

     /**
      * 编辑
      */
     public function edit(){
        IS_POST && $this->jump( $this->logicDeedsLog->updateThisArr($this->param));

        $info =  $this->logicDeedsLog->getThisInfo($this->param['id']);
        $this->assign('info',$info);
        return $this->fetch();
     }

     /**
      * 删除
      */
     public function del(){
         IS_GET && $this->jump( $this->logicDeedsLog->delThisInfo($this->param['id']));
     }

     /**
      * 排序
      */
     public function setSort(){
         $this->jump($this->logicAdminBase->setSort('DeedsLog',$this->param));
     }

}