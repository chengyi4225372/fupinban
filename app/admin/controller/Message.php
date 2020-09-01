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
            if(empty($params['id']) || isset($params['id'])){
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

          return $this->fetch();
      }

}