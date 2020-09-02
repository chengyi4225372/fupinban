<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 11:53
 */

namespace app\admin\logic;


class ExploreNews extends AdminBase{

    /**
     * 获取条件
     */
    public function  getWhere($params=[]){
         $data =[];
         isset($params['search_data']) && $data['title'] =['like','%'.$params['search_data'].'%'];
         $data['status']=1;
         return $data;
    }

    /**
     * 列表
     */
    public function getThisList($where=[]){
        $order =['sort'=>'desc','id'=>'desc'];
        return $this->modelExploreNews->getList($where,false,$order,15);
    }

    /**
     * @param array $params
     * 添加
     */
    public function  setThisArr($params=[]){
        $params['create_time'] =time();
        $result = $this->validateExploreNews->scene('add')->check($params);

        if(!$result){
            return [RESULT_ERROR,$this->validateExploreNews->getError()];
        }

        $urls = url('index');
        $type = isset($params['id'])?'编辑':'添加';
        $ret  = $this->modelExploreNews->setInfo($params);
        $ret && action_log($type,'model explorenews add where id='.$ret);
        return $ret ?[RESULT_SUCCESS,$type.'成功',$urls]:[RESULT_ERROR,$this->modelExplodeNews->getError()];
    }

    /**
     * 编辑
     */
     public function  updateThisArr($params=[]){
         $result = $this->validateExploreNews->scene('edit')->check($params);

         if(!$result){
             return [RESULT_ERROR,$this->validateExploreNews->getError()];
         }

         $urls = url('index');
         $type = isset($params['id'])?'编辑':'添加';
         $ret  = $this->modelExploreNews->setInfo($params);
         $ret && action_log($type,'model explorenews edit where id='.$params['id']);
         return $ret ?[RESULT_SUCCESS,$type.'成功',$urls]:[RESULT_ERROR,$this->modelExplodeNews->getError()];

     }

     /**
      * 删除
      */
      public function  delThisVal($id=''){
          if(empty($id) || is_null($id) || $id== ''){
              return [RESULT_ERROR,'缺少删除id'];
          }

          $url = url('index');
          $ret =$this->modelExplodeNews->setFieldValue(['id'=>$id],'status',0);
          $ret && action_log('删除','model explorenews delete where id='.$id);
          return $ret ?[RESULT_SUCCESS,'删除成功',$url]:[RESULT_ERROR,$this->modelExplodeNews->getError()];

      }

      /**
       * 获取详情
       */
      public function getThisVal($id=''){
          if(empty($id) || is_null($id) || $id== ''){
              return [RESULT_ERROR,'缺少查询条件id'];
          }

          return  $this->modelExploreNews->getInfo(['id'=>$id]);
      }


}