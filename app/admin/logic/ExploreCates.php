<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 17:52
 */

namespace app\admin\logic;


class ExploreCates extends  AdminBase{


    /**
     * 获取查询条件
     */
    public function  getwhere($params =[]){
        $data = [];
        isset($params['search_data']) && $data['a.title'] =['like','%'.$params['search_data'].'%'];
        return $data;
    }


  /**
   * 列表
   */
  public function getWhereList($where=[],$field='a.*,p.path'){
       $this->modelExploreCates->alias('a');
       $where['a.status'] =1;

       $join = [
           [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
       ];

        $this->modelExploreCates->join = $join;

        return $this->modelExploreCates->getList($where,$field,['sort'=>'desc'],15);
  }


   /**
    * 添加
    */
    public function setThisArr($params =[]){
        $params['create_time'] =time();
        $result =  $this->validateExploreCates->scene('add')->check($params);

        if(!$result){
            return [RESULT_ERROR,$this->validateExploreCates->getError()];
        }

        $urls = url('getlist');
        $types= isset($params['id'])?'编辑':'添加';
        $ret  = $this->modelExploreCates->setInfo($params);
        $ret && action_log($types,'model exploreCates '.$types.'where id='.$ret);
        return $ret ?[RESULT_SUCCESS,'操作成功',$urls]:[RESULT_ERROR,$this->modelExploreCates->getError()];

    }

    /**
     * 编辑
     */
     public function updateThisVal($params=[]){
         $result =  $this->validateExploreCates->scene('edit')->check($params);

         if(!$result){
             return [RESULT_ERROR,$this->validateExploreCates->getError()];
         }

         $urls = url('getlist');
         $types= isset($params['id'])?'编辑':'添加';
         $ret  = $this->modelExploreCates->updateInfo(['id'=>$params['id']],$params);
         $ret && action_log($types,'model exploreCates '.$types.'where id='.$params['id']);
         return $ret ?[RESULT_SUCCESS,'操作成功',$urls]:[RESULT_ERROR,$this->modelExploreCates->getError()];
     }

     /**
      * 获取详情
      */
      public function getThisVal($params =[]){
          if(empty($params['id']) || !isset($params['id'])){
              return [RESULT_ERROR,'缺少查询条件'];
          }

          return  $this->modelExploreCates->getInfo(['id'=>$params['id']]);

      }

      /**
       * 删除
       */
      public function delThisVal($id =''){
         if(empty($id) || !isset($id)){
             return [RESULT_ERROR,'缺少删除条件'];
         }

         $urls = url('getlist');
         $ret  = $this->modelExploreCates->setFieldValue(['id'=>$id,'status',0]);
         $ret && action_log('删除数据','model explorecates where id='.$id);
         return $ret ?[RESULT_SUCCESS,'删除成功',$urls]:[RESULT_ERROR,$this->modelExploreCates->getError()];
      }

}