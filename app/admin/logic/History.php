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
   * 列表
   */
  public function getThisList(){

      $where = ['status'=>1];
      $order = ['sort'=>'desc','create_time'=>'desc'];

      return $this->modelHistory->getList($where,false,$order,15);
  }


  /**
   * 添加
   */
  public function setThisArr($params=[]){
      $params['create_time'] =time();
      $result = $this->validateHistory->scene('add')->check($params);

      if(!$result){
          return [RESULT_ERROR,$this->validateHistory->getError()];
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
       $result = $this->validateHistory->scene('edit')->check($params);

       if(!$result){
           return [RESULT_ERROR,$this->validateHistory->getError()];
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
    public function getThisVal($id=''){
        if(empty($id) || is_null($id) || $id== ''){
            return [RESULT_ERROR,'缺少查询条件id'];
        }

        return  $this->modelHistory->getInfo(['id'=>$id]);
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