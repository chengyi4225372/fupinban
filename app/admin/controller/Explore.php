<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 9:44
 */

namespace app\admin\controller;


/**
 * Class Explore
 * @package app\admin\controller
 * 探索实践 分类控制器
 */

class Explore extends AdminBase{

    /**
     * 探索实践分类列表
     */
     public function  getlist(){
         $where= $this->logicExploreCates->getwhere($this->param);
         $list =$this->logicExploreCates->getWhereList($where);
         $this->assign('list',$list);
         return $this->fetch();
     }

     /**
      * 添加
      */
      public function add(){
        IS_POST && $this->jump($this->logicExploreCates->setThisArr($this->param));
        return $this->fetch();
      }

    /**
     * 编辑
     */
      public  function  edit(){
          IS_POST && $this->jump($this->logicExploreCates->updateThisVal($this->param));

          $info = $this->logicExploreCates->getThisVal($this->param);
          $this->assign('info',$info);
          return $this->fetch();
      }

      /**
       * 伪删除
       */
       public function del(){
         IS_GET && $this->jump($this->logicExploreCates->delThisVal($this->param['id']));
       }


       /**
        * 排序
        */
       public function  setSort(){
           $this->jump($this->logicAdminBase->setSort('ExploreCates', $this->param));
       }
}