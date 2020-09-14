<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 9:19
 */

namespace app\admin\controller;

/**
 * Class Preface
 * @package app\admin\controller
 * 前言管理控制
 */

class Preface extends AdminBase{

    /**
     * 前言首页图
     */
    public function getimg(){
        $info = $this->logicPrefaceImg->getOneinfo();
        $this->assign('info',$info);
        return $this->fetch();
    }

    /**
     * 首页图编辑 添加
     */
     public function setimg(){
          if(IS_POST){
              $params = $this->param;
              if(!empty($params['id']) || isset($params['id']) || $params['id'] <=0){
                  $this->jump($this->logicPrefaceImg->setEditInfo($params));
              }else{
                  $this->jump($this->logicPrefaceImg->setImgsInfo($params));
              }
          }

          return false;
     }


    /**
     * 前言新闻内容
     */
    public function  getcontent(){
        $info = $this->logicPrefaceContent->getOneContent();
        $this->assign('info',$info);
        return $this->fetch();
    }

    /**
     * 编辑前言内容
     */
     public function editcontent(){
         if(IS_POST){
             $params = $this->param;
             if(empty($params['id']) || is_null($params['id']) || $params['id'] <=0){

                 $this->jump($this->logicPrefaceContent->setContent($params));
             }else{

                 $this->jump($this->logicPrefaceContent->setThisContent($params));
             }

         }
         return false;
     }


}