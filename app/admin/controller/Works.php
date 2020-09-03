<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 9:44
 */

namespace app\admin\controller;

/**
 * Class Works
 * @package app\admin\controller
 * 扶贫文艺作品 控制器
 */

class Works extends AdminBase{

    protected  $cates = ['1'=>'歌曲','2'=>'视频'];

    /**
     * 列表页
     */
    public function index(){
        $where = $this->logicWorks->getWhere($this->param);
        $list  = $this->logicWorks->getWorkList($where);
        return $this->fetch('',['cates'=>$this->cates,'list'=>$list]);
    }



    /**
     * 添加
     */
    public function add(){
        IS_POST && $this->jump($this->logicWorks->setThisVal($this->param));

        $this->assign('cates',$this->cates);
        return $this->fetch();
    }

    /**
     * 编辑
     */
    public function edit(){
      IS_POST && $this->jump($this->logicWorks->updateThisVal($this->param));

      $info = $this->logicWorks->getThisVal($this->param['id']);
      $this->assign('info',$info);
      $this->assign('cates',$this->cates);
      return $this->fetch();
    }

    /**
     * 删除
     */
    public function del(){
         IS_GET && $this->jump($this->logicWorks->delThisVal($this->param['id']));
    }

    /**
     * 排序
     */
     public function setsort(){
         $this->jump($this->logicAdminBase->setSort('DeedsWorks', $this->param));
     }


}