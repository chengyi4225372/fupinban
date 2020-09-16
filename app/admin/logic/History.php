<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/14
 * Time: 18:42
 */
namespace app\admin\logic;

class History extends AdminBase{



  /**
   * 添加
   */
  public function setThisArr($params=[]){
      $params['create_time'] =time();

      if($params['content'] == null){
          return [RESULT_ERROR,'内容不能为空'];
      }

      $urls = url('index');
      $type = isset($params['id'])?'编辑':'添加';
      $ret  = $this->modelHistory->setInfo($params);
      $ret && action_log($type,'model history add where id='.$ret);
      return $ret ?[RESULT_SUCCESS,$type.'成功',$urls]:[RESULT_ERROR,$this->modelHistory->getError()];
  }

  /**
   * 编辑
   */
   public function updateThisArr($params=[]){

       if($params['content'] == null){
           return [RESULT_ERROR,'内容不能为空'];
       }

       $urls = url('index');
       $type = isset($params['id'])?'编辑':'添加';
       $ret  = $this->modelHistory->setInfo($params);
       $ret && action_log($type,'model history edit where id='.$params['id']);
       return $ret ?[RESULT_SUCCESS,$type.'成功',$urls]:[RESULT_ERROR,$this->modelHistory->getError()];
   }

    /**
     * 获取详情
     */
    public function getThisVal(){

        return  $this->modelHistory->getInfo();
    }


   /**
    * 删除
    */
   public function delThisVal($id =''){
       if(empty($id) || is_null($id) || $id== ''){
           return [RESULT_ERROR,'缺少删除id'];
       }

       $url = url('index');
       $ret =$this->modelHistory->setFieldValue(['id'=>$id],'status',0);
       $ret && action_log('删除','model history delete where id='.$id);
       return $ret ?[RESULT_SUCCESS,'删除成功',$url]:[RESULT_ERROR,$this->modelHistory->getError()];
   }
}