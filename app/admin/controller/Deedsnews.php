<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 17:34
 */

namespace app\admin\controller;

/**
 * Class DeedsNews
 * @package app\admin\controller
 * 扶贫日记控制器
 */

class Deedsnews extends  AdminBase
{

    /**
     * 列表页
     */
    public function index()
    {
        $where = $this->logicDeedsNews->getWhere($this->param);
        $list  = $this->logicDeedsNews->getThisList($where);
        $this->assign('list',$list);
        return $this->fetch();
    }

    /**
     * 添加
     */
    public function add()
    {
        IS_POST && $this->jump($this->logicDeedsNews->setThisArr($this->param));

        return $this->fetch();
    }


    /**
     * 编辑
     */
     public function edit(){
         IS_POST && $this->jump($this->logicDeedsNews->updateThisArr($this->param));

         $info = $this->logicDeedsNews->getThisVal($this->param['id']);
         $this->assign('info',$info);
         return $this->fetch();
     }


     /**
      * 排序
      */
      public function setsort(){
          $this->jump($this->logicAdminBase->setSort('DeedsNews',$this->param));
      }


      /**
       * 删除
       */
      public function del(){
          IS_GET && $this->jump($this->logicDeedsNews->delThisVal($this->param['id']));
      }


      /**
       * 扶贫报道描述
       */
      public function describe(){
          if(IS_POST){
              $params = $this->param;
              if(isset($params['id']) || !is_null($params['id'])){
                  $this->jump($this->logicDeedsDescribe->updateThisVal($params));
              }else {
                  $this->jump($this->logicDeedsDescribe->setThisVal($params));
              }
          }

          $info = $this->logicDeedsDescribe->getThisVal();
          $this->assign('info',$info);
          return $this->fetch();
      }

}