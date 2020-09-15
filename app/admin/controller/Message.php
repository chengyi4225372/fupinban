<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 10:08
 */
namespace app\admin\controller;


/**
 * Class Message
 * @package app\admin\controller
 * 留言板控制器
 */
class Message extends  AdminBase{

    /**
     * 留言结语
     */
     public function contents(){
         $info = $this->logicMessageContent->getThisInfo();
         $this->assign('info',$info);
         return $this->fetch();
     }


    /**
     * 添加设置留言结语
     */
    public function updateContent(){
        if(IS_POST){
            $params = $this->param;
            if(empty($params['id']) || isset($params['id']) || $params['id'] ==''){
                $this->jump($this->logicMessageContent->setContent($params));
            }else{
                $this->jump($this->logicMessageContent->updateThisContent($params));
            }
        }

        return false;
    }



     /**
      * 留言列表
      */
     public function getmsglist(){
           $list = $this->logicMessage->getMsgList();
           $this->assign('list',$list);
           return $this->fetch();
      }


      /**
       * 查看留言列表
       */
      public function seemsg(){
           $info = $this->logicMessage->getThisInfo($this->param['id']);
           $this->assign('info',$info);
           return $this->fetch();
       }

       /**
        * 删除留言
        */
      public function  del(){
         IS_GET && $this->jump($this->logicMessage->delThisMsg($this->param['id']));
       }



}