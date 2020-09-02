<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 11:47
 */
namespace app\admin\controller;

/**
 * Class Explorenews
 * @package app\admin\controller
 * 探索管理新闻控制器
 */

class Explorenews extends AdminBase{

    /**
     * 列表
     */
    public function index(){
        $where = $this->logicExploreNews->getWhere($this->param);
        $list  = $this->logicExploreNews->getThisList($where);

        $cates = $this->logicExploreCates->getWhereList();
        $cates = array_column($cates->toArray()['data'],'title','id');
        $this->assign('list',$list);
        $this->assign('cates',$cates);
        return $this->fetch();
    }

    /**
     * 添加
     */
     public function add(){
         IS_POST && $this->jump($this->logicExploreNews->setThisArr($this->param));

         $cates = $this->logicExploreCates->getWhereList();
         $this->assign('cates',$cates);
         return $this->fetch();
     }

     /**
      * 编辑
      */
     public function edit(){
         IS_POST && $this->jump($this->logicExploreNews->updateThisArr($this->param));

         $info = $this->logicExploreNews->getThisVal($this->param['id']);
         $cates= $this->logicExploreCates->getWhereList();
         $this->assign('cates',$cates);
         $this->assign('info',$info);
         return $this->fetch();
     }

     /**
      * 删除
      */
     public function del(){
         IS_GET && $this->logicExploreNews->delThisVal($this->param['id']);
     }

     /**
      * 排序
      */
      public function setsort(){
          $this->jump($this->logicAdminBase->setSort('ExploreNews', $this->param));
      }

}