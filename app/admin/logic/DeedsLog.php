<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 16:54
 */

namespace app\admin\logic;


class DeedsLog extends  AdminBase{

    /**
     * 获取条件
     */
    public function getWhere($params=[]){
        $data = [];
        isset($params['search_data']) && $data['title'] = ['like','%'.$params['search_data'].'%'];
        return $data;
    }

    /**
     * 列表
     */
     public function getThisList($where=[]){


         $where['status'] =1;
         $order=['sort'=>'desc','create_time'=>'desc'];
         return  $this->modelDeedsLog->getList($where,false,$order,15);
     }

     /**
      * 添加
      */
     public function setThisArr($params=[]){
         $params['create_time']=time();

         $result = $this->validateDeedsLog->scene('add')->check($params);

         if(!$result){
             return [RESULT_ERROR,$this->validateDeedsLog->getError()];
         }

         $urls = url('index');
         $type = isset($params['id'])?'编辑':'添加';
         $ret  = $this->modelDeedsLog->setInfo($params);
         $ret  && action_log($type,'model deedsLog'.$type.'where id = '.$ret);
         return $ret?[RESULT_SUCCESS,$type.'成功',$urls]:[RESULT_ERROR,$this->modelDeedsLog->getError()];

     }

     /**
      * 编辑
      */
      public function updateThisArr($params=[]){
          $result = $this->validateDeedsLog->scene('edit')->check($params);

          if(!$result){
              return [RESULT_ERROR,$this->validateDeedsLog->getError()];
          }

          $urls = url('index');
          $type = isset($params['id'])?'编辑':'添加';

          $ret  = $this->modelDeedsLog->setInfo($params);
          $ret  && action_log($type,'model deedsLog'.$type.'where id = '.$params['id']);
          return $ret?[RESULT_SUCCESS,$type.'成功',$urls]:[RESULT_ERROR,$this->modelDeedsLog->getError()];
      }

      /**
       * 获取详情
       */
      public function getThisInfo($id=''){
          if(empty($id) || !isset($id) || $id ==''){
              return [RESULT_SUCCESS,'缺少查询条件'];
          }

          $info = $this->modelDeedsLog->getInfo(['id'=>$id]);

          return $info;
      }

      /**
       * 删除
       */
       public function delThisInfo($id=''){
           if(empty($id) || !isset($id) || $id ==''){
               return [RESULT_SUCCESS,'缺少删除条件'];
           }

           $urls = url('index');
           $ret  = $this->modelDeedsLog->setFieldValue(['id'=>$id],'status',0);
           $ret && action_log('删除文章','model deedslog where id ='.$id);
           return $ret ?[RESULT_SUCCESS,'删除成功',$urls]:[RESULT_ERROR,$this->modelDeedsLog->getError()];
       }

}